#!/bin/bash

cd django
if [ ! -d "$project" ]; then
  django-admin startproject $project
fi

cd $project
python3 manage.py runserver 0.0.0.0:$port
