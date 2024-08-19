FROM elasticsearch:1.7.6


# install the attachment plugin
ADD https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-mapper-attachments/2.7.1/elasticsearch-mapper-attachments-2.7.1.zip \
    /usr/share/elasticsearch/data/
RUN /usr/share/elasticsearch/bin/plugin --install elasticsearch-mapper-attachments \
    -u file:///usr/share/elasticsearch/data/elasticsearch-mapper-attachments-2.7.1.zip
