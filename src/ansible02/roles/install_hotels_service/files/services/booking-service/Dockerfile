FROM eclipse-temurin:8-jdk-jammy AS build

WORKDIR /app/src
COPY . .
RUN ./mvnw -B dependency:go-offline && \
    ./mvnw -B package -DskipTests

FROM eclipse-temurin:8-jre-jammy

ARG JAR_FILE=/app/src/target/*.jar
WORKDIR /app/
COPY --from=build $JAR_FILE ./booking.jar

EXPOSE 8083

COPY ./wait-for-it.sh .
RUN apt update && apt install bash && chmod +x /app/wait-for-it.sh
ENTRYPOINT ["bash", "-c", "\
./wait-for-it.sh -s -t 60 rabbitmq:5672 -- \
./wait-for-it.sh -s -t 60 postgres:5432 -- \
sleep 5 && java -jar *.jar"]