class postgres{

	class {"postgresql::globals":
		version 			=> "9.3",
		manage_package_repo => true,
		encoding 			=> "UTF8",
		locale 				=> "pt_BR.UTF-8",
		require				=> Class["system_update"]
	}->
	class {"postgresql::server":
		stage                   => main,
		encoding 				=> "UTF8",
		locale                  => "pt_BR.UTF-8",
		ip_mask_allow_all_users => "0.0.0.0/0",
		listen_addresses        => "*",
		ipv4acls                => ["local all postgres peer", "local all all md5", "host all all 0.0.0.0/0 md5", "host all all 127.0.0.1/32 md5", "host all all ::1/128 md5"],
		postgres_password       => "postgres",
	}->
	postgresql::server::role {"vagrant":
		createdb 		=> true,
		login 			=> true,
		superuser		=> true,
		password_hash 	=> postgresql_password("vagrant", "vagrant"),
	}

}