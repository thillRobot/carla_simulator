#!/bin/bash

set -e

touch /entrypoint_test

exec "$@"
