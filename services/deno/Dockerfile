FROM denoland/deno:latest

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME

USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}


WORKDIR /projects

USER ${USER_NAME}

ENTRYPOINT [ "tail", "-f", "/dev/null" ]
