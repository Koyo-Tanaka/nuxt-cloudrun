FROM node:14

WORKDIR /usr/src/app

COPY . ./
RUN npm install

EXPOSE 8080

ARG _TESTNAME

ENV TESTNAME ${_TESTNAME}
ENV HOST=0.0.0.0
ENV PORT=8080

RUN npm run build

CMD [ "npm", "run", "start" ]
