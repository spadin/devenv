# spadin/devenv

Docker image of my development environment so I can save my dotfile configuration and get started developing on any computer with Docker right away. Probably not very helpful for others aside from it being a good starting point for your own Docker-based development environment.

If you clone this project make sure to update the GitHub action at `.github/workflows/publish-docker-image.yml` so pushing changes to GitHub will trigger a build and publish of the changes to Docker Hub.

## Useful commands

### build

```bash
docker build -t spadin/devenv .
```

### push

```bash
docker push spadin/devenv
```

### run

Starts this image with the current directory mounted to `/mnt/workdir` and sets that as the working directory so it's the initial directory when you connect. Also sets hostname to `devenv` otherwise it'd be a random string.

```bash
docker run -it --rm -v .:/mnt/workdir --workdir /mnt/workdir --hostname devenv spadin/devenv:latest
```
