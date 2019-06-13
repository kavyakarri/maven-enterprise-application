FROM 13.127.43.208:8082/jboss/wildfly
COPY MavenEnterpriseApp-ear/target/*.war /opt/jboss/wildfly/standalone/deployments
RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

