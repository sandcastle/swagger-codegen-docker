#!/bin/sh

. swagger-codegen generate \
    -i /spec/$SWAGGER_FILE \
    -l $LANGUAGE \
    -o /gen
