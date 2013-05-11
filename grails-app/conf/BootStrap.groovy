import org.openpm.Country
import org.openpm.Role
import org.openpm.User


class BootStrap {
	def shiroSecurityService

	def init = { servletContext ->

		// Create the admin role
		def adminRole = Role.findByName('ROLE_ADMIN') ?:
			new Role(name: 'ROLE_ADMIN').save(flush: true, failOnError: true)
			
		// Create countries
		def country = new Country(code: 'FRA', name: 'France')
							.save(flush: true, failOnError: true)

		// Create the user role
		def userRole = Role.findByName('ROLE_USER') ?:
			new Role(name: 'ROLE_USER').save(flush: true, failOnError: true)

		// Create an admin user
		def adminUser = User.findByUsername('admin') ?:
			new User(username: "admin",
					email: "admin@company.com",
					code: 'ADM',
					country: country,
					passwordHash: shiroSecurityService.encodePassword('password'))
					.save(flush: true, failOnError: true)

		// Add roles to the admin user
		assert adminUser.addToRoles(adminRole)
				.addToRoles(userRole)
				.save(flush: true, failOnError: true)

		// Create an standard user
		def standardUser = User.findByUsername('joe') ?:
			new User(username: "joe",
					 code: 'JOE',
					 email: "joe@company.com",
					 country: country,
					 passwordHash: shiroSecurityService.encodePassword('password'))
					.save(flush: true, failOnError: true)

		// Add role to the standard user
		assert standardUser.addToRoles(userRole)
				.save(flush: true, failOnError: true)

	}
	def destroy = {
	}
}