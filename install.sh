#!/usr/bin/env bash
set -e
mkdir uniboard
cd uniboard
git clone https://github.com/uni-board/frontend
cat > frontend/.env.production <<EOF
NEXT_PUBLIC_API_URL = http://localhost:80
NEXT_PUBLIC_CLIENT_URL = http://localhost:3000
NEXT_PUBLIC_SOCKET_URL = http://localhost:81
EOF
git clone https://github.com/uni-board/pdf-converter
curl https://raw.githubusercontent.com/uni-board/uniboard/main/docker-compose.yml > docker-compose.yml
docker compose up -d