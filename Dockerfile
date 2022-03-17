FROM rasa/rasa:2.8.26-full

USER root

RUN pip install sanic==20.9.1
RUN apt-get update && apt-get install -y libxml2-dev libxmlsec1-dev libxmlsec1-openssl build-essential pkg-config libxml2-dev libxmlsec1-dev libxmlsec1-openssl

RUN pip install rasa-x==1.0.1 --extra-index-url https://pypi.rasa.com/simple

USER 1001
