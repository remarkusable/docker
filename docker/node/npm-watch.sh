#!/usr/bin/env sh
if ! test -d node_modules; then
    echo "Node modules does not exist";
    npm install;
fi

echo "Running NPM watch";
npm run watch;