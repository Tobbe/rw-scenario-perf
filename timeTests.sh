#!/usr/bin/env bash

START="$(date +%s)"

yarn rw test api --no-watch
yarn rw test api --no-watch
yarn rw test api --no-watch
yarn rw test api --no-watch
yarn rw test api --no-watch

DURATION=$[ $(date +%s) - ${START} ]
AVERAGE=$[ ${DURATION} / 5 ]
echo "It took ${DURATION} seconds to run all tests five times"
echo "With an avearage of ${AVERAGE} seconds per run"

