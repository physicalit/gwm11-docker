#!/bin/bash
exec sudo -u gvm /bin/sh - << 'EOF'
gvm-manage-certs -a
gvmd --create-user=admin --password=admin
greenbone-scapdata-sync
greenbone-certdata-sync
EOF