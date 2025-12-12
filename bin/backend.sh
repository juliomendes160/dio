mkdir -p backend

cd backend

python -m venv .venv

source .venv/Scripts/activate

pip install poetry

poetry init <<-EOF
no
no
yes
EOF

# poetry add 'fastapi=*'
poetry add 'fastapi==0.110.1'

# poetry add 'uvicorn[standard]'
poetry add 'uvicorn[standard]==0.29.0'

poetry env info

touch main.py

cat <<EOF | sed 's/^\t//' > main.py
	from fastapi import FastAPI

	app = FastAPI()

	@app.get("/")
	def read_root():
		return {"message": "Hello World"}
EOF

uvicorn main:app --reload
