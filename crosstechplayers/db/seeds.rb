# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


enablers = Enabler.create([{
	prefix: "Mr.", 
	firstname: "Martin", 
	lastname: "Haley", 
	jobtitle: "Co-Founder & Managing Director", 
	org: "CrossTech PipeLine", 
	email: "mhaley@crosstechpipeline.org", 
	altemail: "mhaley@vmgstrategies.com", 
	mobiletel: "703-906-9400", 
	officetel: "703-425-1945", 
	address_street: "1069 West Broad St., Suite 802", 
	address_city: "Falls Church", 
	address_state: "VA", 
	address_zip: "22046", 
	major_deals: "Great Advisory Board Recruited", 
	notes: "On his way" 
}])
