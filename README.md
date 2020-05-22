# Description

This repository contains assets for creating a binary written on [this post](https://taiyakisun.hatenablog.com/entry/20170627/1498580802).
You can create binary on local build or build in docker container.

Thank you to たい焼きさん.

# How to build

## First step

You should copy code from [here](https://taiyakisun.hatenablog.com/entry/20170627/1498580802), and save as `main.cpp`.
Yes, by your hand.

## Build binary

You can select from 2 options.
1. For local build
   ```
   make
   ```
1. For build in docker container
   ```
   make build-in-docker
   ```

Build binary will be placed at root of repository as `main`.

# How to use

You can get usage by exec `main` w/o any params :-) 
```
$ ./main
Error: Bad args num.
Usage:
   server {tcp|udp} listening_addr listening_port
   or
   client {tcp|udp} dest_addr dest_port src_addr src_port message

Example:
   1. server tcp 192.168.1.5 12345
      client tcp 192.168.1.5 12345 0 0 sample_to_12345

   2. server udp 192.168.1.5 12345
      client udp 192.168.1.5 12345 192.168.1.2 5000 sample_from_5000_to_12345
```

