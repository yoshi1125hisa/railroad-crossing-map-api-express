FROM node:10.23.2-alpine

ENV NODE_ENV=development

ARG project_dir=/app/
ADD . ${project_dir}
WORKDIR ${project_dir}

RUN set -x && \
    apk upgrade --no-cache && \
    npm i

EXPOSE 3000

CMD ["npm", "run", "start"]