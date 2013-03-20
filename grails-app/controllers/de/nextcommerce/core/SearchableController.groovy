package de.nextcommerce.core

import org.compass.core.engine.SearchEngineQueryParseException

class SearchableController {

   def searchableService
    /**
     * Index page with search form and results
     */
    def index = {
		
        if (!params.q?.trim()) {
            return [:]
        }
        try {
            return [searchResult: searchableService.search(params.q, params)]
        } catch (SearchEngineQueryParseException ex) {
            return [parseException: true]
        }
    }
	
	def indexAll(){
		searchableService.indexAll()
	}
    
}


