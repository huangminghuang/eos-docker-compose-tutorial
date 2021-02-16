#!/bin/bash
docker-compose -f docker-compose.yaml -f docker-compose.test.yaml up --exit-code-from validate-db