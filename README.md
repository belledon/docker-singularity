# An example of using Singularity from Docker

## Prereqs

- docker

## Setup

1. Pulling the docker - singularity container

```bash
docker pull quay.io/singularity/singularity
```

2. Use the docker image to pull a singularity container

> Note: `docker` does not automatically bind your working directory to its volumes. To do so use the `-v` flag. In the example below, `-v $HOME:$HOME` binds your home directory (ie `echo $HOME`) to the image.

 
``` bash
mkdir ~/test

docker run -v $HOME:$HOME --privileged -t --rm quay.io/singularity/singularity:v3.4.0 pull $HOME/test/alpine.sif library://alpine:latest
```

Pull an `alpine` image from the Sylabs repos.


3. Interface with the Singularity image using docker

```bash
docker run -v $HOME:$HOME --privileged -t --rm quay.io/singularity/singularity:v3.4.0 exec $HOME/test/alpine.sif echo "helloworld"
```

## Examples

### Fasttext

    Included is a singularity definition file `Singularity` that describes a simple container with `fastText`.
    
    To build the container run:
    
    ```bash
    docker run -v $HOME:$HOME -t --privileged --rm quay.io/singularity/singularity:v3.4.0 build $PWD/cml.sif $PWD/Singularity
    ```
    
    This will build a container called `cml.sif` in your current directory (assuming you are in the repo).
    
    
