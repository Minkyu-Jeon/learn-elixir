#!/bin/bash
docker run -it --rm --name elixir-inst1 -v "${PWD}":/usr/src/myapp -w /usr/src/myapp elixir:1.10.4-alpine $@