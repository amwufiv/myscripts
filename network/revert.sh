#!/bin/bash


# use d
networksetup -setdhcp "Wi-Fi"

#clear dns ip
networksetup -setdnsservers "Wi-Fi" "Empty"
