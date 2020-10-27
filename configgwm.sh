#!/bin/bash
su - gvm
gvm-manage-certs -a
gvmd --create-user=admin --password=admin
greenbone-scapdata-sync
greenbone-certdata-sync