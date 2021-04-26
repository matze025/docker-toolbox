# Toolbox Image for fast debugging

## Build
```shell
docker build . --tag matze025/toolbox:latest
```

## Run
Start a shell to examine the image:

```shell
docker run --rm -it matze025/toolbox bash
```

## Run with Docker socket
```shell
docker run --rm -it -v $PWD:/workdir -v /var/run/docker.sock:/var/run/docker.sock matze025/toolbox bash
```
