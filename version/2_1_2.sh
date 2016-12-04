#!/bin/bash -e

echo "================= Installing Ruby 2.1.2 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.1.2
rvm use 2.1.2

# Install ruby gems
gem install bundler
