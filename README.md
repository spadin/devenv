# spadin/devenv

Docker image of my development environment so I can save my dotfile configuration and get started developing on any computer with Docker right away.

## build

```bash
docker build -t spadin/devenv .
```

## push

```bash
docker push spadin/devenv
```

## run

Starts this image with the current directory mounted to `/mnt/workdir` and sets that as the working directory so it's the initial directory when you connect. Also sets hostname to `devenv` otherwise it'd be a random string.

```bash
docker run -it --rm -v .:/mnt/workdir --workdir /mnt/workdir --hostname devenv spadin/devenv:latest
```
