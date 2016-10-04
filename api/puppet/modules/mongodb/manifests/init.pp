class mongodb {

	package {"mongodb":
		ensure => installed,
		require => Class["system_update"],
	}

}