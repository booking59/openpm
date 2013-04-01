package org.openpm

class Country {
	
	String name
	String code

    static constraints = {
		name minSize: 3
		code size: 3..3
    }
}