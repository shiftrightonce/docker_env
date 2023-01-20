FROM node:lts

WORKDIR /projects

RUN npm install --global typescript
RUN npm i -g @quasar/cli


USER node

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]

