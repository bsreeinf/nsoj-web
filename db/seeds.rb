# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ContactSubject.create!(	title: "Admissions Office"	)
ContactSubject.create!(	title: "Programmes"	)
ContactSubject.create!(	title: "NSoJ Visits"	)
ContactSubject.create!(	title: "Internship and Career Services Centre")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


NsojTvCategory.create!(title: 'bulletin')
NsojTvCategory.create!(title: 'featured')

NsojTv.create!(title: 'Video1',link: 'https://www.youtube.com/embed/eMIlLBlKM_w')
NsojTv.create!(title: 'Video2',link: 'https://www.youtube.com/embed/pUVDrJQAL04')
NsojTv.create!(title: 'Video3',link: 'https://www.youtube.com/embed/PkYQ_Lcz7F0')

NsojRadio.create!(title: 'Sound1',link: 'https://soundcloud.com/nsoj-bangalore/paranjoypart1')
NsojRadio.create!(title: 'Sound2',link: 'https://soundcloud.com/nsoj-bangalore/paranjoy-part2')
NsojRadio.create!(title: 'Sound3',link: 'https://soundcloud.com/nsoj-bangalore/shyju-varkey')