#!/bin/bash -e

echo "================= Installing Ruby 2.1.10 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.1.10
rvm use 2.1.10
rm -rf /usr/local/rvm/src/ruby-2.1.10/*

# Install ruby gems
gem install bundler
