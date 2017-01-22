#! /usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$DIR/../node_modules/peer/bin/peerjs --port 9000 --key peerjs
