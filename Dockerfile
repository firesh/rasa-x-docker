FROM rasa/rasa:3.0.9-full

RUN pip3 install rasa-x --pre --extra-index-url https://pypi.rasa.com/simple
