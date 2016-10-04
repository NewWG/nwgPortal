class php {

	$packages = ["php5", "php5-cli", "php5-gd", "php5-pgsql", "php5-mysql", "php5-mongo", "php5-mcrypt", "php-apc", "php5-sqlite"]
	package {$packages:
		ensure => installed,
		require => Class["system_update"],
	}

	exec {"getcomposer_install":
		command => "curl -sS https://getcomposer.org/installer | php",
		require => Package["php5"],
		unless => "test -f /usr/local/bin/composer",
	}

	exec {"install_getcomposer_global":
		command => "mv composer.phar /usr/local/bin/composer",
		require => Exec["getcomposer_install"],
		unless => "test -f /usr/local/bin/composer",
	}

}