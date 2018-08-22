FROM node:10.9.0-alpine

RUN apk add --no-cache \
        doxygen
RUN npm install moxygen -g

COPY docker-entrypoint.sh /
RUN chmod a+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["sh"]
