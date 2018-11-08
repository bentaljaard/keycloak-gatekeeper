FROM centos:7

LABEL Name=keycloak-gatekeeper \
      Release=https://github.com/keycloak/keycloak-gatekeeper \
      Url=https://github.com/keycloak/keycloak-gatekeeper \
      Help=https://github.com/keycloak/keycloak-gatekeeper/issues

RUN curl -L -o /opt/keycloak-gatekeeper "https://github.com/keycloak/keycloak-gatekeeper/releases/download/v2.3.0/keycloak-proxy-linux-amd64"
RUN useradd -r keycloak \
    && chmod -R 775 /opt/keycloak-gatekeeper 

USER keycloak

WORKDIR "/opt"

EXPOSE 8080

ENTRYPOINT [ "/opt/keycloak-gatekeeper" ]
