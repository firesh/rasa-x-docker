FROM rasa/rasa:3.0.9-full

RUN wget http://xmlsoft.org/sources/libxml2-2.9.1.tar.gz && \
  tar -xvf libxml2-2.9.1.tar.gz && \
  cd libxml2-2.9.1 && \
  ./configure && make && make install && \
  cd .. && \
  rm -f libxml2-2.9.1.tar.gz && \
  rm -rf libxml2-2.9.1

RUN pip3 install rasa-x --pre --extra-index-url https://pypi.rasa.com/simple
