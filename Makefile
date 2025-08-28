.PHONY: build-node build-python build-java

build-node:
\tdocker build -t polyci-node:local ./services/node-app

build-python:
\tdocker build -t polyci-python:local ./services/python-app

build-java:
\tdocker build -t polyci-java:local ./services/java-app
