FROM maven:3-jdk-7

ENV SWAGGER_FILE swagger.yml
ENV LANGUAGE statichtml

VOLUME /spec
VOLUME /gen
WORKDIR /src

ADD run.sh run.sh
RUN chmod a+x /src/run.sh

ADD swagger-codegen/ /src/swagger-codegen

CMD ["/src/run.sh"]
