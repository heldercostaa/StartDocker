# Latest version of node with alpine, a super liteweight version of the OS
FROM node:alpine

# Directory on the container which the project will be installed
WORKDIR /usr/StartDocker

# Copy these two files to the working directory 
COPY package*.json ./
RUN npm install

# Copy all files on the local directory to the working directory on docker 
# (Except for those on .dockerignore)
COPY . .

# Which port the docker should expose for me to access
EXPOSE 3332

# Tells which command to start the application
# Must be unique for each docker file
CMD ["npm", "start"]


###
# Create a container
# $ docker build -t start-docker .

# Run the container
# $ docker run -p 3332:3332 -d start-docker

# Check the active containers (-a flag to show inactives too)
# $ docker ps (-a)

# Stop docker image
# $ docker stop <CONTAINER_ID>

# Remove docker image
# $ docker rm <CONTAINER_ID>
###