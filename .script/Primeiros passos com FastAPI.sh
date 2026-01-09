mkdir -p Primeiros passos com FastAPI

cd Primeiros passos com FastAPI

mkdir -p backend

cd backend

touch README.md

python -m venv .venv

source .env/Scripts/activate

pip install poetry
poetry init <<-EOF
no
no
yes
EOF

# poetry add 'fastapi=*'
# poetry add 'uvicorn[standard]'
poetry add 'fastapi==0.110.1'
poetry add 'uvicorn[standard]==0.29.0'
poetry env info
