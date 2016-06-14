
# Dockerfile: docker.io/anyrhine/debian-dev



This is a repository for the debian based [docker image](https://hub.docker.com/r/anyrhine/debian-dev/) I use for making sure my projects build and run on Linux, or when building binaries for deployment.

The image itself contains just the debian:stable `build-essential` and the `avr-gcc` toolchain as a personal curiosity.

### Usage

Below is an example of what I use to build and test any of my projects with this image, in this case building and testing [libcobs](https://github.com/aki5/libcobs/)

```
libcobs$ docker run -it -v $(pwd):/src -w /src anyrhine/debian-dev make test
cc -O2 -W -Wall   -c -o cobs_test.o cobs_test.c
cc -O2 -W -Wall   -c -o cobs.o cobs.c
cc -o cobs_test cobs_test.o cobs.o
./cobs_test
libcobs$
```

In actuality, since the command is quite long to write, I have a variation of it a script in my path. That script is somewhat specific to my environment but hopefully this gives you the general idea so that you can write your own.
