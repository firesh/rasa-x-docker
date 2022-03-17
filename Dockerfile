FROM rasa/rasa:2.8.26-full

USER root

RUN apt-get update && apt-get install sanic==21.9.3 && apt-get install -y libxml2-dev libxmlsec1-dev libxmlsec1-openssl build-essential pkg-config libxml2-dev libxmlsec1-dev libxmlsec1-openssl

RUN pip install rasa-x --pre --extra-index-url https://pypi.rasa.com/simple

USER 1001
