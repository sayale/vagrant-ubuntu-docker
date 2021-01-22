#!/usr/bin/env bash

sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=P4ssw0rd!' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu 