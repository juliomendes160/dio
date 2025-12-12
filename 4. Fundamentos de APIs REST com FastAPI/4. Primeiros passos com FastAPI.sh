# 4. Primeiros passos com FastAPI

. "4. Fundamentos de APIs REST com FastAPI/3. Introdução ao FastAPI para APIs RESTful Assíncronas.sh"

touch main.py

cat <<EOF | sed 's/^\t//' > main.py
	from fastapi import FastAPI

	app = FastAPI()

	@app.get("/")
	def read_root():
		return {"message": "Hello World"}
EOF

uvicorn main:app --reload


