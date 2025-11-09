from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello from webapp", "env": os.getenv("ENV", "dev")}

@app.get("/health")
def health():
    return {"status": "ok"}
