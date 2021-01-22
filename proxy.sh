#!/usr/bin/env bash

# Docker proxy configuration
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo cp /vagrant/docker/proxy.conf /etc/systemd/system/docker.service.d

sudo systemctl daemon-reload
sudo systemctl restart docker.service
