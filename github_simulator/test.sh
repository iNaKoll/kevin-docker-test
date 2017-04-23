#!/bin/bash

docker run -it --rm \
    -p 8423:8423 \
    --volumes-from kevin \
    --name github_simulator \
    github_simulator https://github.com/iNaKoll/inkamath.git inkamath /etc/kevin/kevin.conf github
