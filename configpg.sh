#!/bin/bash
rc-service postgresql setup
rc-service postgresql start
su - postgres
createuser -DRS gvm
createdb -O gvm gvmd
create role dba with superuser noinherit;
grant dba to gvm;
create extension if not exists "uuid-ossp";
create extension "pgcrypto";
exit