class rbenv::config {

    # do package before config
    Class['rbenv::package'] -> Class['rbenv::config']
}
