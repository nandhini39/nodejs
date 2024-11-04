# Use the official node.js image fro the docker hub
FROM node:14
#set the working directoryinside the container
WORKDIR /usr/src/app
# copy package.json and package-lock.jsom (if availble)
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of your application code
COPY . .
# Expose the port the app runs on
EXPOSE 3111
# Command to run the application 
CMD ["node","app.js"]
