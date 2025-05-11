from fastapi import FastAPI
from pydantic_model.chat_body import ChatBody
from services.sort_source_service import SortSourceService
from services.search_service import SearchService

app = FastAPI()

search_service = SearchService()
sort_source_service= SortSourceService()


# chatting
@app.post('/chat')
def chat_endpoint(body: ChatBody):
	
	search_results = search_service.web_search(body.query)

	sorted_results= sort_source_service.sort_sources(body.query, search_results)
	print(sorted_results)
	
	return body.query