#!/bin/bash

docker-compose exec --user www-data wordpress wp "$@"
