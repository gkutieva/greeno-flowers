#pull down base image from DockerHub
FROM node:18
#copying files - period indicates copy to working dir
COPY . /app
#Set base directory in container
WORKDIR /app
#copy npm
RUN npm install
# command to run the container app
CMD [ "npm", "start" ]