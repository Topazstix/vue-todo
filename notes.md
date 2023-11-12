# General Dev Notes

## Commands for Docker

- Command for general development to localize and design the application
  - `docker run --rm -it -v ./my-todo-app/:/root/my_app --name node_test node:lts bash`
- Command to run the application once done, exposing the port
  - `docker run --rm -it -v ./my-todo-app/:/root/my_app -p 3000:3000 --name node_test node:lts bash`
- Command to compose the application
  - `docker-compose up`

## Commands for Node

- Commands to replicate inside the dockerfile:
  - `npm install -g npm@10.2.3`
  - `npm install -g @vue/cli`
  - `npm install tailwindcss@latest postcss@latest autoprefixer@latest`
  - `npx tailwindcss init -p`
