# An example of using Singularity from Docker

## Prereqs

- docker

## Setup

### 1. Pulling the docker - singularity container

The `setup.sh` script illustrates this process

```bash
chmod +x setup.sh
./setup.sh
```

### 2. Interface with the docker-singularity container

> Note: `docker` does not automatically bind your working directory to its volumes. To do so use the `-v` flag. In the example below, `-v $HOME:$HOME` binds your home directory (ie `echo $HOME`) to the image.

 
``` bash
chmod +x singularity.sh
# should print out the singularity help info
./singularity.sh --help
### 3. Use the docker image to pull a singularity container

```




## Examples

### HelloWorld!

This pulls a very minimal container and runs your first command!

```bash
./singularity.sh exec $PWD/alpine.sif echo "helloworld"
```
### Fasttext


    Included is a singularity definition file `Singularity` that describes a simple container with `fastText`.
    
    To build the container run:
    
    ```bash
    ./singularity.sh $PWD/fasttext.sif $PWD/Singularity
    ```
    
    This will build a container called `cml.sif` in your current directory (assuming you are in the repo).
    
    
