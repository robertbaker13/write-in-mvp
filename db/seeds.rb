# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ----------------
# 6 districts
# -------------------

usa = District.create(
  name: "USA"
  )

ca = District.create(
  name: "California",
  parent: usa
  )

sfc = District.create(
  name: "San Francisco County",
  parent: ca
  )

sf = District.create(
  name: "San Francisco",
  parent: sfc
  )

# 6 offices

#1 president per USA
president = Office.create(
  title: "President",
  district: usa
)

#2 senators per california
ssen = Office.create(
  title: "Senior Senator",
  district: ca
)

jsen = Office.create(
  title: "Junior Senator",
  district: ca
)

#1 representative per district

sfcrep = Office.create(
  title: "Representative",
  district: sfc
)

sfrep = Office.create(
  title: "Mayor",
  district: sf
)

sfpc = Office.create(
  title: "Police Chief",
  district: sf
)

# -------------------------
# 9 twitter users
#   3 users (also organizations)
#   6 organizations (also users)
#   3 endorsements (also candidates)
#   ------
#   6 watchings
#   -----------------------
# 1 user-user:

bobby = User.create(
  uid: "3399540193",
  district: sf
  )

Organization.create(
  user_id: bobby.id
  )

Twitteruser.create(
 uid: "3399540193",
 nickname: "Bobby",
 name: "Bob Smith",
 location: "San Francisco",
 email: "bob@gmail.com",
 image: "http://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png",
 description: "A happy farmer",
 twitter: "https://twitter.com/bobby",
 token: "3399540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: bobby
  )

# 1 user-candidate:

hc = User.create(
  uid: "3388540193",
  district: usa
  )

Organization.create(
  user_id: hc.id
  )

Twitteruser.create(
 uid: "3388540193",
 nickname: "Hillary",
 name: "Hillary Clinton",
 location: "Washington DC",
 email: "hc@gmail.com",
 image: "http://a4.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE4MDAzNDEwMDU4NTc3NDIy.jpg",
 description: "Democrat - Running for President:)", #notsure?
 website: "https://www.hillaryclinton.com/",
 twitter: "https://twitter.com/hc", #take real one?
 token: "3388540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: hc
  )

Candidate.create(
  user: hc,
  office_id: president.id
  )

jb = User.create(
  uid: "33877777",
  district: usa
  )

Organization.create(
  user_id: jb.id
  )

Twitteruser.create(
 uid: "33877777",
 nickname: "Jeb",
 name: "Jeb Bush",
 location: "Washington DC",
 email: "jb@gmail.com",
 image: "http://www.adweek.com/files/imagecache/node-blog/blogs/jeb-bush-logo-hed-2015.jpg",
 description: "Republican - Running for President:)", #notsure?
 twitter: "https://twitter.com/jb", #take real one?
 token: "33877777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: jb
  )

Candidate.create(
  user: jb,
  office_id: president.id
  )





# 1 user-candidate-organization:

parenthood = User.create(
  uid: "3388550193",
  district: usa
  )

Organization.create(
  user_id: parenthood.id
  )

Twitteruser.create(
 uid: "3388540193",
 nickname: "pl-parenthood",
 name: "Planned Parenthood Federation of America",
 location: "USA",
 email: "plp@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Planned_Parenthood_logo.svg/1280px-Planned_Parenthood_logo.svg.png",
 description: "Care. No matter what",
 website: "http://www.plannedparenthood.org/",
 twitter: "https://twitter.com/plp",
 token: "3388540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: parenthood
  )

Endorsement.create(
  candidate_id: hc.id,
  user_id: parenthood.id
  )

Watching.create(
  user_id: bobby.id,
  organization_id: parenthood.id
  )

# ------------------------------------------------

# 2 more user-user:

john = User.create(
  uid: "3399511193",
  district: sf
  )

Organization.create(
  user_id: john.id
  )

Twitteruser.create(
 uid: "3399511193",
 nickname: "John",
 name: "John Miller",
 location: "San Francisco",
 email: "jm@gmail.com",
 image: "http://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png",
 description: "A hard working dude",
 twitter: "https://twitter.com/john",
 token: "3399511193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: john
  )

anna = User.create(
  uid: "339952223",
  district: sf
  )

Organization.create(
  user_id: john.id
  )

Twitteruser.create(
 uid: "339952223",
 nickname: "Anna",
 name: "Anna Miller",
 location: "San Francisco",
 email: "jm@gmail.com",
 image: "http://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png",
 description: "A hard working dude",
 twitter: "https://twitter.com/anna",
 token: "339952223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: anna
  )
# ------------------------
# 6 user-candidates
# ----------------------
df = User.create(
  uid: "33333333",
  district: ca
  )

Organization.create(
  user_id: df.id
  )

Twitteruser.create(
 uid: "33333333",
 nickname: "DianneF",
 name: "DIANNE FEINSTEIN",
 location: "San Francisco Location",
 email: "df@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/commons/0/01/DianneFeinstein.jpg",
 description: "Democrat - Running for Senior Senator!",
 twitter: "https://twitter.com/df", #take real one?
 token: "33333333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: df
  )

Candidate.create(
  user: df,
  office_id: ssen.id
  )

bb = User.create(
  uid: "44444444",
  district: ca
  )

Organization.create(
  user_id: bb.id
  )

Twitteruser.create(
 uid: "44444444",
 nickname: "Babs",
 name: "BARBARA BOXER",
 location: "San Francisco County",
 email: "bb@gmail.com",
 image: "http://cdn-media.leanin.org/wp-content/uploads/2013/03/BarbaraBoxer_290.jpg",
 description: "Democrat - Running for Junior Senator!",
 twitter: "https://twitter.com/df", #take real one?
 token: "44444444-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: bb
  )

Candidate.create(
  user: bb,
  office_id: jsen.id
  )



cf = User.create(
  uid: "44444333",
  district: ca
  )

Organization.create(
  user_id: cf.id
  )

Twitteruser.create(
 uid: "44444333",
 nickname: "Carly",
 name: "Carly Fiorina",
 location: "San Francisco County",
 email: "cf@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Carly_fiorina_speaking.jpg/220px-Carly_fiorina_speaking.jpg",
 description: "Republican - Running for Junior Senator!",
 twitter: "https://twitter.com/df", #take real one?
 token: "44444333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: cf
  )

Candidate.create(
  user: cf,
  office_id: jsen.id
  )


as = User.create(
  uid: "446666333",
  district: ca
  )

Organization.create(
  user_id: as.id
  )

Twitteruser.create(
 uid: "446666333",
 nickname: "Schiffi",
 name: "Adam Schiff",
 location: "San Francisco County",
 email: "cf@gmail.com",
 image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8baTC74OAzAICdMGrSavHQZC6DnmCZUl8gTBZDi0K0U4B0wD4",
 description: "Republican - Running for Senior Senator!",
 twitter: "https://twitter.com/as", #take real one?
 token: "446666333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: as
  )

Candidate.create(
  user: as,
  office_id: ssen.id
  )

# ----------------
# 2 more organizations
# ------------------

nra = User.create(
  uid: "999952223",
  district: usa
  )

Organization.create(
  user_id: nra.id
  )

Twitteruser.create(
 uid: "999952223",
 nickname: "NRA",
 name: "National Rifle Association",
 location: "San Francisco",
 email: "nra@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/en/thumb/7/73/National_Rifle_Association.svg/1024px-National_Rifle_Association.svg.png",
 description: "A gun for everybody!",
 twitter: "https://twitter.com/nra",
 token: "999952223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: nra
  )


 srclub = User.create(
  uid: "222252223",
  district: usa
  )

Organization.create(
  user_id: srclub.id
  )

Twitteruser.create(
 uid: "222252223",
 nickname: "SierraC",
 name: "SierraClub",
 location: "USA",
 email: "srclub@gmail.com",
 image: "http://www.stevestenger.com/wp-content/uploads/2014/10/sierraclub-logo.png",
 description: "EXPLORE, ENJOY, AND PROTECT THE PLANET",
 twitter: "https://twitter.com/srclub",
 token: "222252223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: srclub
  )

Endorsement.create(
  candidate_id: bb.id,
  user_id: parenthood.id
  )

Endorsement.create(
  candidate_id: df.id,
  user_id: srclub.id
  )

Endorsement.create(
  candidate_id: jb.id,
  user_id: nra.id
  )

Watching.create(
  user_id: john.id,
  organization_id: parenthood.id
  )

Watching.create(
  user_id: bobby.id,
  organization_id: srclub.id
  )

Watching.create(
  user_id: anna.id,
  organization_id: srclub.id
  )

Watching.create(
  user_id: anna.id,
  organization_id: parenthood.id
  )




# District.create(
#   name: "USA"
#   )

# Office.create(
#   title: "President",
#   district_id: 1
# )

# Candidate.create(
#   user_id: User.find(3),
#   office_id: Office.first
#   )

# Endorsement.create(
#   candidate_id: Candidate.first,
#   user: User.find(1)
#   )


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
