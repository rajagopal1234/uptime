#!/bin/bash
# returns system uptime, in seconds by default
awk '{print $1}' /proc/uptime
