#!/bin/bash

main() {
  /usr/bin/python /generate_configs.py
  cat /etc/nutcracker/nutcracker.yaml
  /usr/bin/supervisord
}

main