FROM grafana/promtail:2.8.2
 
COPY ./promtail-config.yaml /etc/promtail/promtail-config.yaml