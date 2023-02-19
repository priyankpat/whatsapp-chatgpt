FROM node:16

WORKDIR /app/

ENV OPENAI_API_KEY ""
ENV PREFIX_ENABLED ""


COPY . .

RUN npm install
RUN npm install vite-node
RUN apt-get update
RUN apt-get install chromium -y

CMD ["npm", "run", "start"]
