#!/bin/bash
[ -f snapshot.bin ] || ./get_snapshot.sh
docker-compose -f docker-compose.yaml -f docker-compose.test.yaml up --exit-code-from postgres-query