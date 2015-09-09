# swagger-codegen-docker
> Container for building swagger code

## Getting Started

### Docker Image

Before you can generate code, you first need to aquire the docker image.

#### Local Build

To build the image from source, run the following command:

```sh
sh script/build
```

#### DockerHub

To pull the latest version of the image from DockerHub, run the following command:

```sh
docker pull sandcastle/swagger-codegen-docker
```

### Usage

To generate swagger output - run the following docker command:

```sh
docker run \
    -v "${PWD}/spec:/spec" \
    -v "${PWD}/tmp/output/html:/gen" \
    -e "LANGUAGE=dynamic-html" \
    -e "SWAGGER_FILE=swagger.yml" \
    sandcastle/swagger-codegen-docker
```

Below explains what each line does:

- `-v "${PWD}/spec:/spec" \` - maps the local spec folder (`${PWD}/spec`) to the internal spec folder (`/spec`)
- `-v "${PWD}/tmp/output/html:/gen" \` - maps the local output folder (`${PWD}/tmp/output/html`) to the internal output folder (`/gen`)
- `-e "LANGUAGE=dynamic-html" \` - the language to generate the output in (see below)
- `-e "SWAGGER_FILE=swagger.yml" \` - the name of the swagger file (within the `/spec` volume above)
- `sandcastle/swagger-codegen-docker` - the name of the docker image to run


## Available Languages

The following languages are available for generation:

- android
- async-scala
- csharp
- flash
- java
- jaxrs
- inflector
- nodejs
- objc
- perl
- php
- python
- python3
- qt5cpp
- retrofit
- ruby
- scala
- scalatra
- silex-PHP
- sinatra
- spring-mvc
- dynamic-html
- html
- swagger
- swagger-yaml
- swift
- tizen
- typescript-angular
- typescript-node
- akka-scala
- CsharpDotNet2
