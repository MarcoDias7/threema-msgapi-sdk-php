#!/usr/bin/env bash
set -ex

# ignore script if libsodium is not installed
if [[ "$LIBSODIUM" = false ]]; then exit 0; fi

# convert usefriendly vars into technical ones
case "$LIBSODIUMPHP" in
    stable)
        libphpinstall=libsodium
        ;;
    *)
        libphpinstall=libsodium-$LIBSODIUMPHP
        ;;
esac

# install PHP extension
pecl install "${libphpinstall}"

# enable extension manually
# echo "extension=libsodium.so" > libsodium.ini
# phpenv config-add libsodium.ini
# or php5enmod libsodium (not tested)
# or echo "extension=<extension>.so" >> ~/.phpenv/versions/$(phpenv version-name)/etc/php.ini
