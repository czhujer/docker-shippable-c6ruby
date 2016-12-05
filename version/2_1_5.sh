#!/bin/bash -e

echo "================= Installing Ruby 2.1.5 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.1.5
rvm use 2.1.5
rm -rf /usr/local/rvm/src/ruby-2.1.5/*

# Install ruby gems
gem install bundler
