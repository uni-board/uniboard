<p align="center">
  <img width="200" src="https://github.com/uni-board/backend/assets/79582543/520cea7d-18a7-4bb8-8f92-dd7f03a92d29" />
</p>
<h1 align="center">Uniboard</h1>

## ❔ What is this project about?
**Uniboard** is a _collaborative_ online board for **brainstorming** and creating **amazing ideas**.
It has plenty of features in harmony with minimalistic design.

## 📦 Features
- Creating new board
- Joining to other boards via link
- Getting instant updates of board
- Selecting multiple objects and moving them
- Creating board objects:
  - Rectangle
  - Drawing
  - Triangle
  - Ellipse
  - Circle
  - Line
  - Text
  - Sticker

## 👀 Gallery
<p align="center">
  <img src="https://github.com/uni-board/backend/assets/79582543/d971321d-5e25-4486-8b95-f2eaaac1b336" />
</p>

## 📂 Source code

Project is separated into:
- [Backend](https://github.com/uni-board/backend) - where all content is hosted
- [Frontend](https://github.com/uni-board/frontend) - web-based client for board

## 🏡 Self-Hosting

You can use **this all-in-one guide**... or see [other installation options](docs/install.md)

You will need to install two parts:
<details>
<summary>
Backend
</summary>

Install [Docker](https://docs.docker.com/engine/install/) and [Docker-Compose](https://docs.docker.com/compose/install/)

After that, paste this code into `docker-compose.yml` file:

docker-compose.yml


```yml
networks:
  board:
    driver: bridge
    ipam:
      config:
        - subnet: 10.5.0.0/16
          gateway: 10.5.0.1

services:
  backend:
    image: ghcr.io/uni-board/backend:0.0.1-snapshot
    environment:
      DB_CONNECT: mongodb://10.5.0.3:27017 # required(if NO_DB=false), connect url to MongoDB
      SOCKETS_ENABLED: "true" # optional, Sockets API
      NO_DB: "false" # optional, if true, uses in-memory db, otherwise uses MongoDB
      TRACE: "true" # optional, if true, writes all logs, system will be slower
    ports:
      - 80:8080 # API
      - 81:8081 # Sockets
    networks:
      board:
        ipv4_address: 10.5.0.2
    volumes:
      - ./data:/app/data
    depends_on:
      - db

  db:
    image: mongo:latest
    ports:
      - 27017:27017
    networks:
      board:
        ipv4_address: 10.5.0.3
    volumes:
      - ./db:/data/db
```

Then, run:
```
docker compose up -d
```
</details>


<details>
<summary>
Frontend
</summary>

Install [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

Execute these commands:
```bash
git clone https://github.com/uni-board/frontend
cd frontend
npm i
npm run
```
</details>

...and you are ready to go! Just to go [http://localhost:3000](http://localhost:3000)

## ⚖ License
```
MIT License

Copyright (c) 2024 uni-board

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```