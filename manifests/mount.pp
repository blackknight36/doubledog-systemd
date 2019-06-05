#
# == Define: systemd::mount
#
# Manage a systemd mount unit configuration file.
#
# === Authors
#
#   John Florian <jflorian@doubledog.org>
#
# === Copyright
#
# This file is part of the doubledog-systemd Puppet module.
# Copyright 2016-2019 John Florian
# SPDX-License-Identifier: GPL-3.0-or-later


define systemd::mount (
        String[1]                       $mnt_what,
        Ddolib::File::Ensure            $ensure='present',
        Optional[Boolean]               $enable=true,
        Optional[Systemd::Unitlist]     $mnt_after=undef,
        Optional[Systemd::Unitlist]     $mnt_before=undef,
        String[1]                       $mnt_description=$title,
        Optional[String[3]]             $mnt_directorymode=undef,
        Optional[Systemd::Unitlist]     $mnt_options=undef,
        Optional[Systemd::Unitlist]     $mnt_requires=undef,
        Optional[Integer[0]]            $mnt_timeoutsec=undef,
        Optional[String[1]]             $mnt_type=undef,
        Systemd::Unitlist               $mnt_wantedby='multi-user.target',
        Optional[Stdlib::Absolutepath]  $mnt_where=$title,
    ) {

    $sterile_name = systemd_escaped_mount_path($mnt_where)

    ::systemd::unit { $sterile_name:
        ensure  => $ensure,
        enable  => $enable,
        content => template('systemd/mount.erb'),
    }
}
