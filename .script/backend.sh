# backend

setup_backend() {
	create_backend_directory
	change_backend_directory
	create_environment
	activate_environment
	setup_poetry
	create_main_file
	run_server
}

create_backend_directory() {
	read -p "Create Backend Directory: " backend_directory
	mkdir -p "$backend_directory"
}

change_backend_directory() {
	read -p "Change Backend Directory: " backend_directory
	cd "$backend_directory"
}

create_environment() {
	python -m venv .venv
}

activate_environment() {
	source .venv/Scripts/activate
}

deactivate_environment() {
	deactivate
}

setup_poetry() {
	pip install poetry
	poetry init <<-EOF
	no
	no
	yes
	EOF

	# poetry add 'fastapi=*'
	# poetry add 'uvicorn[standard]'
	poetry add 'fastapi=0.110.1'
	poetry add 'uvicorn[standard]==0.29.0'
	poetry env info
}

create_main_file() {
	touch main.py
cat <<EOF | sed 's/^\t//' > main.py
	from fastapi import FastAPI

	app = FastAPI()

	@app.get("/")
	def read_root():
		return {"message": "Hello World"}
EOF
cat <<EOF | sed 's/^\t//' > main.py
	from datetime import UTC, datetime
	from fastapi import FastAPI
	from pydantic import BaseModel

	app = FastAPI()

	@app.get("/")
	def read_root():
		return {"message": "Hello World"}
EOF
}

run_server() {
    activate_environment
	uvicorn main:app --reload
}
