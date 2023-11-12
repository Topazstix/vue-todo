# Use the official Node.js LTS image
FROM node:lts

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY ./my-todo-app/todo/package*.json ./

# Install project dependencies
RUN npm install

# Copy the project files into the container
COPY ./my-todo-app/todo ./

# Expose the port the app runs on
EXPOSE 8080

# Command to run the app
CMD ["npm", "run", "serve"]