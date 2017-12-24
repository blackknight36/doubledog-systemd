# systemd

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with systemd](#setup)
    * [What systemd affects](#what-systemd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with systemd](#beginning-with-systemd)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
    * [Classes](#classes)
    * [Defined types](#defined-types)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module lets you manage the configuration of systemd, its various daemons and perhaps most importantly, the nifty things you can via systemd units.

## Setup

### What systemd Affects

### Setup Requirements

### Beginning with systemd

## Usage

## Reference

**Classes:**

* [systemd](#systemd-class)
* [systemd::daemon](#systemddaemon-class)
* [systemd::journald](#systemdjournald-class)

**Defined types:**


### Classes

#### systemd class

This class manages the systemd package.

##### `packages`
An array of package names needed for the systemd installation.  The default should be correct for supported platforms.


#### systemd::daemon class

This class manages the systemd daemon.  Due to the nature of systemd being the init process (PID 1), there is very little to manage here.  This chiefly exists to serve as an event notification target so that the systemd daemon can reload its configuration when needed.


#### systemd::journald class

This class manages the systemd journald daemon.

##### `content`
Literal content for the `journald.conf` file.  If neither `content` nor
`source` is given, the content of the file will be provided by this module.

##### `service`
The service name of the systemd journald daemon.

##### `source`
URI to the `journald.conf` file content.  If neither `content` nor `source` is
given, the content of the file will be provided by this module.


### Defined types


## Limitations

Tested on modern Fedora and CentOS releases, but likely to work on any Red Hat variant.  Adaptations for other operating systems should be trivial as this module follows the data-in-module paradigm.  See `data/common.yaml` for the most likely obstructions.  If "one size can't fit all", the value should be moved from `data/common.yaml` to `data/os/%{facts.os.name}.yaml` instead.  See `hiera.yaml` for how this is handled.

This should be compatible with Puppet 3.x and is being used with Puppet 4.x as
well.

## Development

Contributions are welcome via pull requests.  All code should generally be compliant with puppet-lint.