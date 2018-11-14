#!/bin/bash

sudo apt-get --yes update
sudo apt-get --yes upgrade
DEB_RELEASE=$(lsb_release -c -s)
      echo "Adding Puppet Labs repo for $DEB_RELEASE."
      apt-get install -y curl
     # curl  -O "http://apt.puppetlabs.com/puppetlabs-release-pc1-$DEB_RELEASE.deb"
     curl -O http://apt.puppetlabs.com/puppet5-release-$DEB_RELEASE.deb
     dpkg -i "puppet5-release-$DEB_RELEASE.deb"
      # dpkg -i "puppetlabs-release-pc1-$DEB_RELEASE.deb"
      #curl http://pm.puppetlabs.com/puppet-agent/2018.1.5/5.5.8/repos/puppet-agent-ubuntu-16.04-amd64.tar.gz -o /tmp/puppet-agent-ubuntu-16.04-amd64.tar.gz
     # gunzip /tmp/puppet-agent-ubuntu-16.04-amd64.tar.gz
      apt-get -y -m update
sudo apt-get --yes install puppet-agent
