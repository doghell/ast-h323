#!/bin/bash

PKG_BUILD_TYPE=$1
PKG_INSTALL_PREFIX=$2

[ -f "${PKG_INSTALL_PREFIX}/bin/pkg-config" ] && rm -vf "${PKG_INSTALL_PREFIX}/bin/pkg-config"
