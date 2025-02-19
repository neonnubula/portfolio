#!/bin/bash

./ipInfo.sh | sed -n '/IP Address/p'
