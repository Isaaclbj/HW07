#!/bin/bash

export MIX_ENV=prod
export PORT=4800
export NODEBIN=`pwd`/assets/node_modules/.bin
export PATH="$PATH:$NODEBIN"

echo "Building..."

mkdir -p ~/.config
mkdir -p priv/static

mix deps.get
mix compile
mix ecto.create
mix ecto.migrate
## (cd assets && npm install)
(cd assets && webpack --mode production)
mix phx.digest

echo "Generating release..."
mix release

echo "Stopping old copy of app, if any..."
_build/prod/rel/tasks2/bin/tasks2 stop || true

echo "Starting app..."

_build/prod/rel/tasks2/bin/tasks2 start
