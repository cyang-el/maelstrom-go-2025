#!/bin/bash
    go install ./cmd/my-echo &&
    ../maelstrom test \
                 -w echo \
                 --bin $GOBIN/my-echo \
                 --node-count 1 \
                 --time-limit 10
