FROM node:6.11.3
MAINTAINER Bjoern Kimminich <bjoern.kimminich@owasp.org>
LABEL version="4.2.2"
#RUN apk update && apk add git
COPY . /juice-shop
WORKDIR /juice-shop
RUN npm install --production --unsafe-perm
EXPOSE 3000
CMD ["npm","start"]
