package org.openpm

class Project {
	
	enum Status {
		open, closed
	}
	
	String name
	String code
	String description
	Client client
	User projectManager 
	Date startDate
	Date endDate
	
	static hasMany = [countries: Country, activities: Activity, invoices: Invoice]

    static constraints = {
		name nullable: false, blank: false, minSize: 4
		code nullable: false, blank: false, minSize: 3
		countries nullable:false, minSize: 1
		client nullable: false
		startDate nullable: false
		endDate nullable: true, validator: {val, obj ->
			if( val?.before(obj.startDate) ) {
				return false
			}
		}
		projectManager nullable: false, validator: {val, obj ->
			if( !val?.roles.name.contains('PROJECT_MANAGER') ) {
				return false
			}
		}
    }
	
	Status getStatus() {
		endDate == null ? Status.open : Status.closed 
	}
}
