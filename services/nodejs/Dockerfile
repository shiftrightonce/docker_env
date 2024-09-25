FROM node:lts

WORKDIR /projects

RUN npm install --global typescript
RUN npm i -g @quasar/cli
RUN curl -fsSL https://bun.sh/install | bash
RUN corepack enable


USER node

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]

