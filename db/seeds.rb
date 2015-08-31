# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

District.create(
  name: "USA"
  )

District.create(
  name: "California",
  parent_id: 1
  )

District.create(
  name: "San Francisco",
  parent_id: 2
  )

Office.create(
  title: "President",
  district_id: 1
)

Office.create(
  title: "Mayor",
  district_id: 3
)

Candidate.create(
  user_id: User.find(3),
  office_id: Office.first
  )

Endorsement.create(
  candidate_id: Candidate.first,
  user: User.find(1)
  )




# 10.times do
#   District.create(
#     name: Faker::Address.city,
#     parent_id: District.find_by(name: "United States").id
#     )
# end

# 30.times do
# User.create(
#   token: Faker::Name.name,
#   expires: Faker::Date.forward(199),
#   district_id: District.all.sample.id
#   )
# end

# 20.times do
#   Watching.create(
#     user: User.all.sample,
#     organization: Organization.all.sample
#     )
# end

# 20.times do
#   Organization.create(
#     user: User.all.sample
#     )
# end

# 20.times do
# Watching.create(
#   user: User.first,
#   organization: Organization.all.sample,
#   )
# end

# 15.times do
# Watching.create(
#   user: User.last,
#   organization: Organization.all.sample,
#   )
# end

# 5.times do
#   Office.create(
#     title: ['President', 'Senate', 'Representative', 'Mayor'].sample,
#     district_id: District.all.sample.id,
#     election_date: Faker::Date.forward(199)
#     )
# end

# 30.times do
#   Candidate.create(
#     user_id: User.limit(6).sample.id,
#     office_id: Office.all.sample.id
#     )
# end

# 30.times do
#   Endorsement.create(
#     candidate: Candidate.all.sample,
#     user: User.limit(10).sample
#     )
# end

# # Organization of George
# tony = User.first
# ashley = User.find(2)
# amy = User.find(3)
# kristie = User.find(4)
# katie = User.find(5)
# gloria = User.find(6)
# christina = User.find(7)
# jay = User.find(8)


# tony_org = tony.organization
# ashley_org = ashley.organization
# amy_org = amy.organization

# # Endorsements from George's subjects
# 5.times do
#   Endorsement.create(
#     candidate: Candidate.all.sample,
#     user: tony
#     )
# end

# 15.times do
#   Endorsement.create(
#     candidate: Candidate.all.sample,
#     user: ashley
#     )
# end

# 20.times do
#   Endorsement.create(
#     candidate: Candidate.all.sample,
#     user: amy
#     )
# end

# # Target subject for report card
# george = User.create(
#   token: Faker::Name.name,
#   expires: Faker::Date.forward(199),
#   district_id: District.all.sample.id
#   )

# george.watchings.create(
#   organization: tony_org
#   )

# george.watchings.create(
#   organization: ashley_org
#   )


# george.watchings.create(
#   organization: amy_org
#   )

# Twitter.create(
#   user: tony,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(5){Faker::Name.name},
#   following: Array.new(2){Faker::Name.name}
#   )

# Twitter.create(
#   user: ashley,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(10){Faker::Name.name},
#   following: Array.new(20){Faker::Name.name}
#   )
# Twitter.create(
#   user: amy,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(14){Faker::Name.name},
#   following: Array.new(34){Faker::Name.name}
#   )
# Twitter.create(
#   user: katie,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(2){Faker::Name.name},
#   following: Array.new(0){Faker::Name.name}
#   )
# Twitter.create(
#   user: kristie,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(11){Faker::Name.name},
#   following: Array.new(4){Faker::Name.name}
#   )
# Twitter.create(
#   user: gloria,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(2){Faker::Name.name},
#   following: Array.new(10){Faker::Name.name}
#   )
# Twitter.create(
#   user: christina,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(10){Faker::Name.name},
#   following: Array.new(11){Faker::Name.name}
#   )
# Twitter.create(
#   user: jay,
#   name: Faker::Name.name,
#   screen_name: Faker::Name.name,
#   uri: Faker::Internet.url,
#   website: Faker::Internet.url,
#   profile_img: Faker::Avatar.image,
#   followers: Array.new(22){Faker::Name.name},
#   following: Array.new(33){Faker::Name.name}
#   )
