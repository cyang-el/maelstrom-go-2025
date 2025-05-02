#!/bin/bash
    go install ./cmd/my-uid &&
    ../maelstrom test \
                 -w unique-ids \
                 --bin $GOBIN/my-uid \
                 --node-count 3 \
                 --time-limit 30 \
                 --rate 1000 \
                 --availability total \
                 --nemesis partition
