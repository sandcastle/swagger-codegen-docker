#!/bin/sh

java -jar "/src/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar" generate \
    -i /spec/$SWAGGER_FILE \
    -l $LANGUAGE \
    -o /gen
