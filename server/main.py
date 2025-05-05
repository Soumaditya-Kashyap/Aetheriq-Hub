from fastapi import FastAPI
from pydantic_model.chat_body import ChatBody
from services.search_service import SearchService

app = FastAPI()

search_service = SearchService()
# chatting
@app.post('/chat')
def chat_endpoint(body: ChatBody):
	# 1. search the web and find out appropriate sources
	search_results = search_service.web_search(body.query)
	print(search_results)
	# 2. sort the sources based on the relevance to the query
	# 3. generate the response using LLM(Gemini)
	return body.query