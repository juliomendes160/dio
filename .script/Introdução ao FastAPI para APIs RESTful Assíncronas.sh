mkdir -p Introdução ao FastAPI para APIs RESTful Assíncronas

cd Introdução ao FastAPI para APIs RESTful Assíncronas

mkdir -p backend

cd backend

touch README.md

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
