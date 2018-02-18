FROM bpicio/keycloak-adapter-wildfly-mysql:3.2.1.Final

# Open management port
EXPOSE 9990

# Add management user with password
RUN ${JBOSS_HOME}/bin/add-user.sh admin admin --silent

# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to all interface
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]