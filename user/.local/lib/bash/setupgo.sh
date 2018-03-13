#!/bin/bash

for bin in /usr/lib/go-1.6/bin/* ; do
    sudo update-alternatives --install /usr/bin/$(basename $bin) $(basename $bin) $bin 0
    sudo update-alternatives --set $(basename $bin) $bin
done

for bin in /usr/lib/go-1.9/bin/* ; do
    sudo update-alternatives --install /usr/bin/$(basename $bin) $(basename $bin) $bin 0
    sudo update-alternatives --set $(basename $bin) $bin
done

for bin in /usr/lib/go-1.10/bin/* ; do
    sudo update-alternatives --install /usr/bin/$(basename $bin) $(basename $bin) $bin 0
    sudo update-alternatives --set $(basename $bin) $bin
done