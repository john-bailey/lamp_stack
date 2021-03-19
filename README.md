# Lamp Stack

#### Table of Contents

1. [Module Description - What does the module do?](#module-description)
2. [Setup - The basics of getting started with postgresql module](#setup)
    * [What postgresql affects](#what-postgresql-affects)
    * [Getting started with postgresql](#getting-started-with-postgresql)
3. [Usage - Configuration options and additional functionality](#usage)

## Description

This is a Lamp stack with MySQL, Python, Flask, Nginx, and Adminer.

Everything runs in containers using Docker Swarm.

## Setup

1. clone the repo
2. initialize the swarm
3. add the password for the db admin user to the file local/passwd.txt
4. run it

### clone the repo
```
git clone git@github.com:john-bailey/lamp_stack
```

### initialize the swarm
```
cd lamp_stack
docker swarm init
```

### add the admin password
```
cd local
echo 'your_admin_password' > passwd.txt
```

### run it
```
cd ..
docker stack up -c ./docker-compose.yml pyapp
```

### stop it
```
docker stack down pyapp
```

### stop it to rebuild
```
docker stack down pyapp && sudo rm -rf data
```
