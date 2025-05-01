from fastapi import FastAPI
from pydantic_model.chat_body import ChatBody

app = FastAPI()

# chatting
@app.post('/chat')
def chat_endpoint(body: ChatBody):
	print(body.query)
	return body.query