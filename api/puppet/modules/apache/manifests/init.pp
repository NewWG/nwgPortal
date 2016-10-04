class apache {

	$packages = ["apache2", "libapache2-mod-php5"]
	package {$packages:
		ensure => installed,
		require => Class["system_update"],
	}

	exec{"a2enmod":
		command => "a2enmod rewrite expires headers php5",
		require => Package["apache2"],
		notify => Service["apache2"],
	}

	exec{"php5enmod":
		command => "php5enmod mcrypt",
		require => Package["apache2"],
		notify => Service["apache2"],
	}

	service {"apache2":
		ensure => "running",
		require => Package["apache2"],
	}

	file {"000-default.conf":
		path => "/etc/apache2/sites-available/000-default.conf",
		ensure => file,
		require => Package["apache2"],
		source => "puppet:///modules/apache/000-default.conf",
		notify => Service["apache2"],
	}

	file {"20-apcu.ini":
		path => "/etc/php5/apache2/conf.d/20-apcu.ini",
		ensure => file,
		require => Package["apache2"],
		source => "puppet:///modules/apache/20-apcu.ini",
		notify => Service["apache2"],
	}

	augeas {"short_open_tag":
		context => "/files/etc/php5/apache2/php.ini",
		changes => ["set PHP/short_open_tag On"],
		require => Package["apache2"],
		notify => Service["apache2"],
	}

}