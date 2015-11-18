# OpenDJ Docker Example

## Overview

When I attempted to spin up an LDAP backend I found it surprisingly difficult.
After some searching, I found a nice way to run OpenDJ in a Docker container
with seeded LDIF data.

I provide an example of this configuration in this repository in hopes that it
will be useful to others.

## Usage

Simply `make all` to launch the OpenDJ container. To clean, `make clean`.

Bind user name: `cn=Directory Manager`
Bind user password: `password`

You can connect to the LDAP backend on port 1389 using a plaintext connection.
You may choose to modify `input.ldif` prior to your build.

## Acknowledgements

Many thanks to [ghchinoy](https://github.com/ghchinoy) for his fine work in
packaging
[ForgeRock OpenDJ with Docker](https://github.com/ghchinoy/forgerock-docker),
which we make use of here.
