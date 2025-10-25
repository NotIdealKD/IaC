#!/bin/bash

#Defining default params w
environment="dev"
os_type="win"

while [[ $# -gt 0]]; do
    case "$1" in
        --environment)
            environment="$2"
            shift 2
            ;;
        --os_type)
            os="$2"
            shift 2
            ;;
        *)
        