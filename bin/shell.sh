#!/bin/bash

if [ $# -eq 0 ]; then
  docker-compose exec --user www-data wordpress bash
else 
  docker-compose exec --user $1 wordpress bash
fi
