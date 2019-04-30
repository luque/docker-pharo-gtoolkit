#!/bin/bash

function install_pharo {
  mkdir /data/pharo
  cd /data/pharo
  curl get.pharo.org/64/70+vm | bash
}

! [ -d /data/pharo  ] && install_pharo

cd /data/pharo
./pharo "$@"
