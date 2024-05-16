FROM grafana/promtail:2.8.2
 
COPY ./promtail-config.yml /etc/promtail/promtail-config.yml