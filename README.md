# rsyslog /w omkafka

## To run:
```
docker run -d \
-v /var/log:/var/log:ro \
-v /etc/rsyslog.conf:/etc/rsyslog.conf:ro \
djenriquez/rsyslog-omkafka
```
Note: /etc/rsyslog.conf mounted from the host contains the configuration file for rsyslog.