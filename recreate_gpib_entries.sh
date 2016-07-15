#!/bin/bash
for i in `seq 0 15`; \
       do \
           mknod -m u=rw,g=rw,o= /dev/gpib${i} c 160 ${i} || exit 1; \
           chown root:gpib /dev/gpib${i}; \
       done
