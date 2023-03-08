FROM mcr.microsoft.com/dotnet/sdk

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME


USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}

RUN apt-get update && apt-get -y install curl zip git gnupg 


WORKDIR /projects

USER ${USER_NAME}

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
