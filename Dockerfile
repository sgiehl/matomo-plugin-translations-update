FROM alpine:latest
LABEL author="Stefan Giehl <stefan@matomo.org>"
LABEL "com.github.actions.name"="Create Translation PR"
LABEL "com.github.actions.description"="Create PR to update translations of a Matomo plugin based on given parameters"
LABEL "com.github.actions.icon"="send"
LABEL "com.github.actions.color"="blue"
RUN	apk add bash ca-certificates curl jq
COPY create-pr.sh /usr/bin/create-pr
ENTRYPOINT ["create-pr"]
