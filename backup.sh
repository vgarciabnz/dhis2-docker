#!/bin/bash

docker exec -it dhis2-docker_db_1  pg_dump -U dhis -d dhis2 -T _* -T analytics_* | gzip > $1
