FROM rust:latest

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME

USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}

WORKDIR /projects

USER ${USER_NAME}

RUN cargo install cargo-watch
RUN cargo install cargo-audit
RUN rustup component add rustfmt
RUN rustup component add clippy


ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]