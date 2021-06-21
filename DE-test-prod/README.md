# Data Engineer Coding Test

Atitawat Pol-in coding solution for Zipmex interview.

## Table of contents

* [General info](#general-info)
* [Technologies](#technologies)
* [Prerequisite](#prerequisite)
* [Setup](#setup)
* [Steps](#steps)

## General info

This project is my solution for Data Engineer coding test.

## Technologies
Technologies in this project:
* Postgres
* Hive
* Python
* Docker

## Prerequisite
* Install docker from https://docs.docker.com/get-docker/
* Install python and packages required
* clone this repo to local


## Setup
```bash
$ pip install -r requirements.txt
$ docker pull postgres:12
$ docker run -p 5432:5432 --name staging-pg -e POSTGRES_PASSWORD=password -e POSTGRES_DB=zipmex -d postgres:12
```

## Steps
1. install python packages
2. start postgres database with docker