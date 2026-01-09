from datetime import UTC, datetime
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

@app.get("/")
def read_root():
	return {"message": "Hello World"}
