#!/bin/bash -e

echo "================= Installing Ruby 1.9.2 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 1.9.2
rvm use 1.9.2
rm -rf /usr/local/rvm/src/ruby-1.9.2/*

# Install ruby gems
gem install bundler
