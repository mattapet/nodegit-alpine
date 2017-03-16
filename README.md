# nodegit-alpine
-------

This image uses the [node:alpine](https://hub.docker.com/_/node/) as a base image and extends it with the [nodegit](http://www.nodegit.org) package. Since the `nodegit` binaries are not properly linked for the [alpine](https://hub.docker.com/_/alpine/) image, local compilation of all sources is needed.

-------

## Build

```bash
git clone git@github.com:Pet3rMatta/nodegit-alpine.git
cd nodegit-alpine
docker build --tag nodegit-alpine .
```

-------

## Usage

* `docker pull docker pull pet3rmatta/nodegit-alpine` - Pull from the repository.
* `FROM nodegit-alpine` - Simply build your image.
* `WORKDIR /srv` - The working directory is set to `/srv/`, so that is the directory, where the `nodegit` is installed.
* It is important, that you do not install your own `nodegit` package, so it won't override the preinstalled one. For example, you could install the `nodegit` as the dev dependency as `npm install --save-dev` and in the Dockerfile install the dependencies with `npm install --only={production}` command.
