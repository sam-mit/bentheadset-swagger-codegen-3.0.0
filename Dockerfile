FROM java:8

RUN mkdir /workdir
WORKDIR /workdir

RUN wget --verbose \
https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/swagger-codegen-cli-3.0.0-20171123.081951-8.jar \
--output-document swagger-codegen-cli-3.jar

ENTRYPOINT ["java", \
"-jar", "swagger-codegen-cli-3.jar"]
#"-Dio.swagger.parser.util.RemoteUrl.trustAll=true"]

CMD ["help"]
