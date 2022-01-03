FROM node:17


WORKDIR /home/simple-api-server
COPY index.js .
COPY package.json .
COPY entrypoint.sh . 

RUN npm install
RUN chmod +x ./entrypoint.sh
CMD echo "no default command. quit" && sleep 1