#!/bin/bash

echo "priv key $1"

gpg2 -v --import *.priv_key &&

GPG=gpg2 blackbox_postdeploy

ls