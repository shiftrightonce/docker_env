FROM rust:bullseye

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME

USER root

RUN apt-get update && apt-get upgrade -y
RUN apt-get install cmake -y

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}


RUN curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash -s -- -p /usr/local

USER ${USER_NAME}


WORKDIR /projects

# RUN cargo install cargo-edit
RUN cargo install cargo-watch
RUN cargo install cargo-audit
RUN cargo install cargo-expand
RUN cargo install cargo-release
RUN cargo install cargo-smart-release
RUN cargo install git-cliff
RUN cargo install mdbook
RUN rustup component add rustfmt
RUN rustup component add clippy


ENTRYPOINT ["tail", "-f","/dev/null"]
