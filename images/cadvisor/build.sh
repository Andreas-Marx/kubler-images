#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="app-containers/cadvisor"
_no_cache_20240131=app-containers/cadvisor

configure_builder()
{
    # TODO: apparently binary packages are now cached, fix kubler _no_cache
    emaint binhost -f
}

#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{
    update_keywords app-containers/cadvisor '+~amd64'
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    :
}
