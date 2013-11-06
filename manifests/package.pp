class rbenv::package {

    package  { $rbenv::packages:
        ensure => $rbenv::ensure,
    }

}
