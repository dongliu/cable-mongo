# cable-mongo
mongo docker instance for local cable application

## base docker images

The mongodb is based on the official docker image, see https://hub.docker.com/_/mongo/ . The mongo express is for the development convenience, and is based on https://hub.docker.com/_/mongo-express/ .

## directories

The `data` directory is mounted to the mongo container, and will contain all the db data including the default db's with the image and also the cable db created for cable development.

The `seed` directory contains scripts that will be executed from `/docker-entrypoint-initdb.d` when the mongo container starts. The scripts are executed in alphabet sequence of their names. The first script creates the db user for cable application. The second script creates cable users in the cable db.

## usage

Run `docker-compose up` to build and start the services. You can access mongo express at <http://localhost:8082>. The username is `cable`, and password is `cablepass`.


