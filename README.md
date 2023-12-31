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
docker run -it --rm -v .:/mnt/workdir --workdir /mnt/workdir --hostname devenv spadin/devenv:latest --platform linux/amd64
```

#### Note

Ctrl-p for navigating back in history doesn't work well out of the box. Need to update `~/.docker/config.json` and add the following into the json object. [Reddit source][1].

```json
{
  "detachKeys": "ctrl-o,e"
}
```

[1]: https://www.reddit.com/r/commandline/comments/jyobew/ctrlp_and_ctrln_from_readline_work_weirdly_in_a/
