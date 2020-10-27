#!/bin/bash
/etc/init.d/postgresql stop
/etc/init.d/postgresql start
exec sudo -u postgres /bin/sh - << 'EOF'
createuser -DRS gvm
createdb -O gvm gvmd
create role dba with superuser noinherit;
grant dba to gvm;
create extension if not exists "uuid-ossp";
create extension "pgcrypto";
exit
EOF