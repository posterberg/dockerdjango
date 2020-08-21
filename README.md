# Install Django on Docker

Automate installation of Django on Docker.

Change your settings in `Dockerfile` and run `build.sh`.

You can now run your container with `docker run -d --name django -v /path/to/django:/usr/src/app/django -p port:port django:latest`
