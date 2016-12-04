#!/bin/bash -e

echo "================= Installing Ruby 2.0.0 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.0.0
rvm use 2.0.0

# Install ruby gems
gem install bundler
