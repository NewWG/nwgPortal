Exec {
	path => ["/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/"]
}

class system_update {

	exec {"apt-get update":
		command => "apt-get update"
	}

	exec {"locale-gen":
		command => "locale-gen pt_BR.UTF-8"
	}

	$basicPackages = ["build-essential", "htop", "augeas-tools", "libaugeas-ruby", "libaugeas-dev", "libxml2-dev", "curl", "nmap", "npm", "git", "sqlite"]
	package {$basicPackages :
		ensure => installed,
		require => Exec["apt-get update"],
	}

}

include system_update
include nodejs

class post_install_nodejs {

	exec {"ln -s /usr/bin/nodejs /usr/bin/node":
		command => "ln -s /usr/bin/nodejs /usr/bin/node",
		unless => "test -f /usr/bin/node",
	}

	exec {"npm install -g bower":
		command => "npm install -g bower",
		require => Package["npm"]
	}

}

include post_install_nodejs
include postgres

class { "::mysql::server":
	root_password    => "vagrant",
	override_options => { "mysqld" => { "bind-address" => "0.0.0.0" } },
	users => {
		"vagrant@localhost" => {
			ensure                   => "present",
			max_connections_per_hour => "0",
			max_queries_per_hour     => "0",
			max_updates_per_hour     => "0",
			max_user_connections     => "0",
		},
	},
  	databases => {
		"vagrant" => {
			ensure  => "present",
			charset => "utf8",
		}
	},
	grants => {
		"vagrant@localhost/vagrant.*" => {
			ensure     => "present",
			options    => ["GRANT"],
			privileges => ["ALL"],
			table      => "vagrant.*",
			user       => "vagrant@localhost",
		},
	}

}

include php
include apache