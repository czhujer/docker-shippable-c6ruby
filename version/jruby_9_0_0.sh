#!/bin/bash -e

echo "================= Installing JRuby 9.0.0 ==================="
source /etc/profile.d/rvm.sh
rvm requirements
rvm install jruby-9.0.0
rvm use jruby-9.0.0

# Install ruby gems
gem install bundler
