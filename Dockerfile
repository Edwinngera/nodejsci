# Use the official lightweight Node.js base image
FROM node:14-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source to the container
COPY . .

# Specify the port that the container should listen on at runtime
EXPOSE 3000

# Define the command to run the application
CMD [ "npm", "start" ]
