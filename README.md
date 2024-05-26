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

[](https://github.com/uni-board/uniboard/assets/79582543/e4557f01-bd0a-44db-a104-3a632df4487d)

## 📂 Source code

Project is separated into:
- [Backend](https://github.com/uni-board/backend) - where all content is hosted
- [Frontend](https://github.com/uni-board/frontend) - web-based client for board

## 🏡 Self-Hosting

Self-hosting might be necessary if your company doesn't trust external services as core part of infrastructure.

Required dependencies:
- `git`
- `docker, docker-compose` (without `sudo`)
- `curl`

Run this command in terminal to download installation script:
```shell
curl https://raw.githubusercontent.com/uni-board/uniboard/main/install.sh > install.sh
```
Please replace `NEXT_PUBLIC_API_URL`, `NEXT_PUBLIC_CLIENT_URL` and `NEXT_PUBLIC_SOCKET_URL`
in script to actual urls of your backend and frontend.

Then, run this script via this command:
```shell
bash install.sh
```

...and you are ready to go! Just to go [http://localhost:3000](http://localhost:3000) to see your self-hosted board

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
