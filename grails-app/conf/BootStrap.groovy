import de.nextcommerce.core.CustomerFieldsTemplate
import de.nextcommerce.core.Fields
import de.nextcommerce.core.Scheme
import de.nextcommerce.core.Screens
import de.nextcommerce.core.secure.Authority
import de.nextcommerce.core.secure.PersonAuthority
import de.nextcommerce.core.secure.Requestmap
import de.nextcommerce.core.secure.User


class BootStrap {
	def springSecurityService

	def init = { servletContext ->

	
		new Requestmap(url: '/', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		new Requestmap(url: '/**', configAttribute: 'IS_AUTHENTICATED_FULLY').save()
		new Requestmap(url: '/dashboard/**', configAttribute: 'ROLE_ADMIN,IS_AUTHENTICATED_FULLY').save()
		new Requestmap(url: '/configurator/**', configAttribute: 'ROLE_ADMIN').save()
		new Requestmap(url: '/fields/**', configAttribute: 'ROLE_ADMIN').save()
		new Requestmap(url: '/screens/**', configAttribute: 'ROLE_ADMIN').save()

		new Requestmap(url: '/js/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		new Requestmap(url: '/css/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		new Requestmap(url: '/images/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		new Requestmap(url: '/img/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		new Requestmap(url: '/login/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		
		
		if(!User.count){
		def adminRole = new Authority(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Authority(authority: 'ROLE_USER').save(flush: true)
		
		def testAdminUser = new User(username: 'snowaczynski', fullName: "Stefan Nowaczynski", accountLocked: 'false', passwordExpired: 'false', accountExpired: 'false', enabled: true, password: 'nowa123')
		testAdminUser.save(failOnError: true)
		
		PersonAuthority.create testAdminUser, adminRole
		
		assert User.count() == 1
		assert Authority.count() == 2
		//assert PersonAuthority.count() == 1
		
		}
		
		if(!CustomerFieldsTemplate.count){
			new CustomerFieldsTemplate(customerField: 'Auswahliste', description: 'Auswahlliste mit einer konfigurierbaren Liste von Optionen', fieldType: 'select', dataType: 'java.lang.String').save()
			new CustomerFieldsTemplate(customerField: 'Textfeld', description: 'Ein einfaches, einzeiliges benutzerdefiniertes Feld, in das einfacher Text eingegeben werden kann', fieldType: 'Text',  dataType: 'java.lang.String').save()
			new CustomerFieldsTemplate(customerField: 'Checkbox', description: 'Checkbox', fieldType: 'Checkbox',  dataType: 'java.lang.Boolean').save()
			new CustomerFieldsTemplate(customerField: 'Freies Textfeld', description: 'Ein mehrzeiliges benutzerdefiniertes Textfeld', fieldType: 'TextArea').save()
			new CustomerFieldsTemplate(customerField: 'WYSIWYG', description: 'WYSIWYG Editor', fieldType: 'WYSIWYG',  dataType: 'java.lang.String').save()
			new CustomerFieldsTemplate(customerField: 'DatePicker', description: 'Ein benutzerdefiniertes Feld, in dem Daten gespeichert werden und das eine Datumsauswahl zur Anzeige verwendet.', fieldType: 'DatePicker',  dataType: 'Date').save()
			new CustomerFieldsTemplate(customerField: 'Mehrfachauswahl', description: 'Auswahl mehrerer Werte in einer Auswahlliste', fieldType: 'Mehrfachauswahl',  dataType: 'java.lang.String').save()
			new CustomerFieldsTemplate(customerField: 'Zahlenfeld', description: 'Ein benutzerdefiniertes Feld, in dem numerische Eingaben (Fließkomma) gespeichert und überprüft werden.', fieldType: 'Zahl').save()
			new CustomerFieldsTemplate(customerField: 'Optionsfleld', description: 'Liste der Optionsfelder', fieldType: 'Zahl',  dataType: 'java.lang.Boolean').save()
			
		}
		
		if(!Scheme.count){
			def scheme = new Scheme(schemeName: 'DefaultScheme').save(flush: true)
			
			def artikel = new Screens(scheme: scheme, screenName: 'Artikel' ).save(flush: true)
			new Fields(screen:artikel,customDescription: 'Default', customLable: 'Artikelname', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:artikel,customDescription: 'Default', customLable: 'ArtNr', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:artikel,customDescription: 'Default', customLable: 'SEO Name', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			
			def kunden = new Screens(scheme: scheme, screenName: 'Kunden' ).save(flush: true)
			new Fields(screen:kunden,customDescription: 'Default', customLable: 'Name', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kunden,customDescription: 'Default', customLable: 'Strasse/Nr.', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kunden,customDescription: 'Default', customLable: 'PLZ', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kunden,customDescription: 'Default', customLable: 'Ort', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kunden,customDescription: 'Default', customLable: 'EMail', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kunden,customDescription: 'Default', customLable: 'Telefon', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			
			def kategorien = new Screens(scheme: scheme, screenName: 'Kategorien' ).save(flush: true)
			new Fields(screen:kategorien,customDescription: 'Default', customLable: 'Kategorie', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kategorien,customDescription: 'Default', customLable: 'Kurzbeschreibung', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			new Fields(screen:kategorien,customDescription: 'Default', customLable: 'Beschreibung', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'WYSIWYG').save(flush: true)
			new Fields(screen:kategorien,customDescription: 'Default', customLable: 'SEO Name', fieldDescription: 'Default', fieldLable: 'Textfeld', fieldType: 'Text').save(flush: true)
			
			
			
		}
		
		
		
	}
	def destroy = {
	}
}
