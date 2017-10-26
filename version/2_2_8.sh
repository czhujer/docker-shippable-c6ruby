#!/bin/bash -e

echo "================= Installing Ruby 2.2.8 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.2.8
rvm use 2.2.8
rm -rf /usr/local/rvm/src/ruby-2.2.8/*

# Install ruby gems
gem install bundler
