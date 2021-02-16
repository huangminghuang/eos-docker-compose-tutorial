#!/bin/bash

set -e

function wait_nodeos_ready {
  for (( i=0 ; i<10; i++ )); do
    ! curl -fs http://nodeos:8888/v1/chain/get_info || break
    sleep 3
  done
}

wait_nodeos_ready

sleep 10

[[ $(psql -c 'SELECT COUNT(*) from chain.block_info;' | head -3 | tail -1 ) > 0 ]]