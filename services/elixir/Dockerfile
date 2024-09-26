FROM elixir:latest

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME

USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}

RUN apt update && apt -y install inotify-tools
WORKDIR /projects

USER ${USERID}

CMD ["tail", "-f","/dev/null"]