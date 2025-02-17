# Use official Node.js image as a base
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files into the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Run the app
CMD ["npm", "run", "start:prod"]
