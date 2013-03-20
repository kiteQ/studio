import grails.plugins.springsecurity.Secured


class SecureController {

	 @Secured(['IS_AUTHENTICATED_FULLY']) 
	 def index = { 
		 render 'you have IS_AUTHENTICATED_FULLY' 
	 }

	 @Secured(['ROLE_ADMIN', 'ROLE_SUPERUSER']) 
	 def adminEither = { 
			 render 'you have ROLE_ADMIN or SUPERUSER' 
		}

	 def anybody = { 
		 render 'anyone can see this' } 
	 }


	 
