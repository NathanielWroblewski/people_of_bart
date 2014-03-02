#!/bin/bash

#import the latest dump from production
heroku pgbackups:capture --expire
curl -o latest.dump `heroku pgbackups:url`
pg_restore --verbose --clean --no-acl --no-owner -d people_of_bart_development latest.dump
