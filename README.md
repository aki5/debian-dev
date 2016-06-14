
# Dockerfile: docker.io/anyrhine/debian-dev

This is a repository for the debian based build image I use to build and test Linux binaries when working on Mac or Windows machines.

The image itself contains just the debian:stable `build-essential` and the `avr-gcc` toolchain as a personal curiosity.

You can build the image just by typing `make`, however I recommend using the [anyrhine/debian-dev](https://hub.docker.com/r/anyrhine/debian-dev/) image from dockerhub, which is where I have pushed the result after running make myself.

### Usage

Below is an example of how I build and test my projects with this image, in this case building and testing [libcobs](https://github.com/aki5/libcobs/)

```
libcobs$ docker run -it -v $(pwd):/src -w /src anyrhine/debian-dev make test
cc -O2 -W -Wall   -c -o cobs_test.o cobs_test.c
cc -O2 -W -Wall   -c -o cobs.o cobs.c
cc -o cobs_test cobs_test.o cobs.o
./cobs_test
libcobs$
```

In reality, since the command is quite long to type, I have a variation of it a script in my path. That script is somewhat specific to my environment but hopefully this gives you the general idea so that you can write your own.
