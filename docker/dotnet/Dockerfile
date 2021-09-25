FROM mcr.microsoft.com/dotnet/aspnet:6.0.0-rc.1-focal-amd64

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME


USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}

RUN apt-get update && apt-get -y install curl zip git gnupg 


WORKDIR /projects

USER ${USERID}

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
