class rbenv(
	$packages = params_lookup( 'packages' ),
	$enabled  = params_lookup( 'enabled' ),
  ) inherits rbenv::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include rbenv::package, rbenv::config
}
