#! /bin/bash

# 磁盘文件太大，git传输不上去，git commit 需要压缩Bochs，
# linux-0.11-devel-060625下文件

rm Bochs.zip linux-0.11-devel-060625-local.zip

zip -r Bochs.zip ./Bochs/*
zip -r linux-0.11-devel-060625-local.zip ./linux-0.11-devel-060625/*

rm ./Bochs ./linux-0.11-devel-060625 -rf

