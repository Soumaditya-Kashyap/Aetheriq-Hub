import google.generativeai as genai # type: ignore


class LLMService:
    def __init__(self):
        self.model = genai.GenerativeModel('')
    def generate_response(self, querry:str, search_results:list[dict]):
        pass