# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genderList = [
	"female",
	"male",
	"other"
]
genderList.each do |genderType|
	Gender.create({classification: genderType})
end

gradeList = [
	"9th",
	"10th",
	"11th",
	"12th"
]
gradeList.each do |grade|
	Grade.create({level: grade})
end

ethnicityList = [
	"White",
	"Latin@ / Hispanic",
	"Black / African American",
	"Asian",
	"American Indian / Alaskan Native",
	"Native Hawaiian / Pacific Islander",
	"Multiracial"
]
ethnicityList.each do |ethnicity|
	Ethnicity.create({group: ethnicity})
end

groupList = [
	"TRiO",
	"ASPIRE",
	"AVID"
]
groupList.each do |name|
	Group.create({name: name})
end

classificationList = [
	"DACA",
	"First Generation",
	"Free / Reduced Lunch",
	"Title X",
	"Regular Education",
	"TAG",
	"SPED",
	"SST",
	"504"
]
classificationList.each do |category|
	Classification.create({category: category})
end

sessionTypeList = [
	"Individual",
	"Group",
	"Classroom Guidance",
	"Parent Meeting",
	"Teacher-Student Meeting",
	"Classroom Observation",
	"Counselor Meeting",
	"Counselor-Teacher Meeting",
	"Email Referral",
	"Advisory",
	"Counselor - Student meeting",
	"College & Career"
]
sessionTypeList.each do |category|
	Type.create({category: category})
end

referralList = [
	"Self Referral",
	"Parent",
	"Teacher",
	"Admin",
	"Student"
]
referralList.each do |source|
	Referral.create({source: source})
end

domainList = [
	"Academic",
	"College / Career",
	"Personal / Social"
]
domainList.each do |category|
	AscaDomain.create({category: category})
end

interventionList = [
	"Academic Planning",
	"Academic / Study Skills",
	"Behavior Management",
	"College / Career Counseling",
	"Coping Skills / Stress Management",
	"Communication",
	"Decision Making / Responsibility",
	"Organization / Time Management",
	"Resources and Information",
	"Responsibility",
	"Safety Check",
	"Self Esteem",
	"Social Skills",
	"Student Advocacy",
	"Referral to Admin",
	"Referral to Outside Therapy",
	"Parent Contact",
	"Offered Further Counseling Services",
	"Peer Mediation",
	"Referral to TRiO",
	"Referral to ASPIRE"
]
interventionList.each do |description|
	Intervention.create({description: description})
end

seenByList = [
	"Liz Perez"
]
seenByList.each do |name|
	SeenBy.create({name: name})
end