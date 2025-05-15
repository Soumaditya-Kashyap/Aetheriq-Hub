from typing import List
from sentence_transformers import SentenceTransformer # type: ignore
import numpy as np # type: ignore

class SortSourceService:
    def __init__(self):
        self.embedding_model = SentenceTransformer("all-miniLM-L6-v2")  

    def sort_sources(self, querry: str,search_results: List[dict]):
       try:  
        relevant_docs = []   
        querry_embedding = self.embedding_model.encode(querry)

        for res in search_results:
            res_embedding = self.embedding_model.encode(res['content'])

            similarity = float(np.dot(querry_embedding, res_embedding) / (
                np.linalg.norm(querry_embedding) * np.linalg.norm(res_embedding)
            ))

            res['relevance_score']= similarity

            if similarity > 0.3:
                relevant_docs.append(res)

        return sorted(relevant_docs, key= lambda x: x['relevance_score'], reverse=True)
       except Exception as e:
        print(e)
    
            

      