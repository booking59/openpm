package org.openpm

class ProjectController {
	
    def index() { 
		redirect (action: 'list')
	}
	
	def list = { 
		
	}
	
	def create = {
		[project: new Project(params)]
	}
	
}
