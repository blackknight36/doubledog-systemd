<!--
This file is part of the doubledog-systemd Puppet module.
Copyright 2018-2019 John Florian
SPDX-License-Identifier: GPL-3.0-or-later

Template

## [VERSION] DATE/WIP
### Added
### Changed
### Deprecated
### Removed
### Fixed
### Security

-->

# Change log

All notable changes to this project (since v2.2.0) will be documented in this file.  The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [3.0.0] 2019-08-07
### Added
- `Systemd::Unit::Ensure` data type
- `systemd::mount::auto` parameter and support for systemd auto-mounting
### Changed
- `systemd::unit::ensure` and `systemd::mount::ensure` now only accept values of the `Systemd::Unit::Ensure` data type
    - Booleans are no longer allowed
    - `present` and `started` are now valid
    - some other obscure, nonsensical values are no longer permitted
- `systemd_escaped_mount_path()` function now:
    - renamed to `systemd::escape()`
    - uses modern Ruby functions API (and thus no longer supports Puppet 3)
    - accepts a 2nd argument to specify the unit type suffix, but defaults to `mount` for backwards compatibility

## [2.4.0] 2019-06-05
### Added
- Fedora 30 support
- Puppet 6 compatibility
- parameters for Hiera driven declarations:
    - `systemd::mounts`
    - `systemd::units`
- documentation for:
    - `systemd_escaped_mount_path` function
    - `Systemd::Eventlist` data type
    - `Systemd::Flexsize` data type
    - `Systemd::Period` data type
    - `Systemd::Rate` data type
    - `Systemd::Size` data type
    - `Systemd::Unitlist` data type
    - `Systemd::Journald::Level` data type
    - `Systemd::Logind::Event` data type
### Changed
- `validate_absolute_path()` function to `Stdlib::Absolutepath` data type
- Absolute namespace references have been eliminated.
- README.md now links to official systemd docs where possible

## [2.3.0] 2019-03-21
### Added
- Fedora 29 support
### Changed
- switch from Hiera 4 to Hiera 5
- dependency on `doubledog/ddolib` now expects 1 >= version < 2
- dependency on `puppetlabs/stdlib` now allows version 5
### Removed
- Fedora 26-27 support

## [2.2.0 and prior] 2018-12-15

This and prior releases predate this project's keeping of a formal CHANGELOG.  If you are truly curious, see the Git history.