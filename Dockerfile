FROM maven:3-jdk-7

ENV SWAGGER_FILE swagger.yml
ENV LANGUAGE statichtml
ENV SWAGGER_CODEGEN_DIR	/src/swagger-codegen
ENV SWAGGER_CODEGEN_CLI	$SWAGGER_CODEGEN_DIR/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar

ADD swagger-codegen $SWAGGER_CODEGEN_DIR

RUN cd $SWAGGER_CODEGEN_DIR \
    && mvn package \
    && printf '#!/bin/bash\njava -jar $SWAGGER_CODEGEN_CLI $@\n' > /bin/swagger-codegen \
    && chmod a+x /bin/swagger-codegen

VOLUME /spec
VOLUME /gen

ADD run.sh /run.sh

CMD ["/run.sh"]