FROM denoland/deno:latest

ARG GROUPID
ARG GROUP_NAME


USER root
RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    adduser deno ${GROUP_NAME}

WORKDIR /projects

USER deno

ENTRYPOINT [ "tail", "-f", "/dev/null" ]