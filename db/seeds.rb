ContactSubject.create!(	title: "Admissions Office"	)
ContactSubject.create!(	title: "Programmes"	)
ContactSubject.create!(	title: "NSoJ Visits"	)
ContactSubject.create!(	title: "Internship and Career Services Centre")

AdminUser.create!(email: 'admin@nsoj.in', password: 'NSoJ_Admin@123', password_confirmation: 'NSoJ_Admin@123')
User.create!( 
	name: "Sreenath B", 
	email: "bsreeinf@gmail.com",
	phone: "+91 805 023 6035", 
	password: "qwertyui", 
	password_confirmation: "qwertyui", 
	address: "521, 1st Cross, XYZ Street", 
	activated: true,
	city: "Bangalore", 
	pincode: "560 033", 
	state: "Karnataka", 
	country: "India"
)