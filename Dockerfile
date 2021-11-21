FROM heroku/heroku:20

RUN apt-get update
RUN apt-get install -y maven

ADD . /app
WORKDIR /app

CMD mvn spring-boot:run

