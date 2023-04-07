#!/bin/bash
find . -type d -maxdepth 1 -mindepth 1| xargs -i tar -cvzf {}.tar.gz {}
