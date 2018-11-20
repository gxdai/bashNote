# Learn how to write dockerfile
I am learning how to write dockerfile in this blog.


## TIPs
**Do not use `/` as the `PATH`, as it causes the build to transfer the entire contents of your hard drive to the Docker deamon.**
## Instructions
Since a docker image is nothing but a series of layers built on top of eatch other, we start with the base image.
* FROM: set the base image.
* MAINTAINER: tell who is the author of the generated images.
* CMD: it takes various forms and when it is used individually in the file without the ENTRYPOINT command.
  * `CMD ["executable", "param1", "param2"]` 
* ENTRYPOINT: Use the command at ENTRYPOINT as execute CMD wiht parameters in side
  * ```
    ENTRYPOINT ["/bin/cat"]
    CMD ["/etc/passwd"]
    ```
* EXPOSE: the default expost port
* `.dockerignore`: for exclude files and directories 
* `-f specified\_dockerfile`: `-f` flag could be used to refer to a specified dockerfile.
* Each instruction is run independently, and causes a new image to be created os `RUN cd /tmp` will not have any effect on the next instruction.
## Format

A `Dockerfile` **must start with a `FROM` instruction.** The `FROM` instruction may only be preceded by one or more `ARG` instruction, which declare arguments that are used in `FROM` lines with `Dockerfile`.

## Parser directive
All the parser directives must be at the very top of a `Dockerfile`.
```
# directive1=value1
# directives2=value2
```
`escape` sets the character used to escape characters in a `Dockerfile`.

## Environment replacement
`ENV` instruction for setting environment variables.
* `${var\_name:-word}`: If `var\_name` is not seen, `word` will be the result, otherwise the result will be that value.
* `${var\_name:+word}`: If `var\_name` is not seen, the result is empty, otherwise, `word` will be the result.
```
FROM busybox
ENV foo /bar
WORKDIR ${foo}   # WORKDIR  /bar
ADD . $foo       # ADD . /bar
COPY \$foo /quux # COPY /bar /quux
```

List of instructions in `Dockerfile`:
* ADD
* COPY
* ENV
* EXPOSE
* FROM
* LABEL
* STOPSIGNAL
* USER
* VOLUME
* WORKDIR
