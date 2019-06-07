# Docker Local Development Environment

This is the Docker Compose I use for developing my projects. I'm mostly working with
Laravel framework, but it should be possible to use this for any PHP project.

To use this Docker Compose, simply copy the `docker` directory, `docker-compose.yml`,
`docker-compose.unit.yml` and `.env.example` to your project directory. You'll need
to rename `.env.example` to `.env`

In the `.env` you'll need to modify the `CURRENT_UID` variable value with the UID of
your user in the host machine, this will make sure that the ownership of the files
created by the Docker container will be owned by your user account in the host
machine. To find out what UID your user have, you can execute the command `id`
in Linux.

Once you copy the files and modify the `.env` value, you can start the Docker containers
by executing `docker-compose up -d`, Docker Compose will start the containers and after
it finishes booting the containers you can access your project via http://localhost:8000
