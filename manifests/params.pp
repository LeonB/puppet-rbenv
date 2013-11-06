# Class: rbenv::params
#
# This class defines default parameters used by the main module class rbenv
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to rbenv class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class rbenv::params {

	### Application related parameters

	$packages = $::operatingsystem ? {
		default => [
			'libncurses5-dev' # so stdlib gets compiled with curses
		]
	}

	$enabled = true

}
