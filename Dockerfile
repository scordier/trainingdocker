FROM java:7

RUN mkdir /src

COPY src/HelloWorld.java /src

RUN javac -d /bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
