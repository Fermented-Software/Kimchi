#!/bin/bash

# exits when the command exits with a non-zero status.
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /kimchi/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
