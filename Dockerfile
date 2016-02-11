FROM kibana:4.4.0

RUN /opt/kibana/bin/kibana plugin --install elastic/sense/latest \
  && chown -R kibana:kibana /opt/kibana

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["kibana"]
