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
  name: "San Francisco, CA",
  parent: sfc
  )

District.create(
  name: "Alameda, CA",
  parent: ca
  )

District.create(
  name: "San Jose, CA",
  parent: ca
  )

District.create(
  name: "Del Norte, CA",
  parent: ca
  )

District.create(
  name: "Lake, CA",
  parent: ca
  )

District.create(
  name: "Marin, CA",
  parent: ca
  )

District.create(
  name: "Napa, CA",
  parent: ca
  )

District.create(
  name: "Mendocino, CA",
  parent: ca
  )

District.create(
  name: "San Mateo, CA",
  parent: ca
  )

District.create(
  name: "Solano, CA",
  parent: ca
  )

District.create(
  name: "Sonoma, CA",
  parent: ca
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
  user: bobby
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
  user: hc
  )

Twitteruser.create(
 uid: "3388540193",
 nickname: "Hillary",
 name: "Hillary Clinton",
 location: "Washington DC",
 email: "hc@gmail.com",
 image: "http://a4.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE4MDAzNDEwMDU4NTc3NDIy.jpg",
 description: "Wife, mom, grandma, women+kids advocate, FLOTUS, Senator, SecState, hair icon, pantsuit aficionado, 2016 presidential candidate. Tweets from Hillary signed –H",
 website: "https://www.hillaryclinton.com/",
 twitter: "https://twitter.com/hc",
 token: "3388540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: hc
  )

hcan = Candidate.create(
  user: hc,
  office: president
  )

jb = User.create(
  uid: "33877777",
  district: usa
  )

Organization.create(
  user: jb
  )

Twitteruser.create(
 uid: "33877777",
 nickname: "Jeb",
 name: "Jeb Bush",
 location: "Washington DC",
 email: "jb@gmail.com",
 image: "http://www.adweek.com/files/imagecache/node-blog/blogs/jeb-bush-logo-hed-2015.jpg",
 description: "43rd Governor of the State of Florida", #notsure?
 twitter: "https://twitter.com/jb", #take real one?
 token: "33877777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: jb
  )

jbcan = Candidate.create(
  user: jb,
  office: president
  )





# 1 user-candidate-organization:

parenthood = User.create(
  uid: "3388550193",
  district: usa
  )

parenthoodorg = Organization.create(
  user: parenthood
  )

Twitteruser.create(
 uid: "3388540193",
 nickname: "pl-parenthood",
 name: "Planned Parenthood Federation of America",
 location: "USA",
 email: "plp@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Planned_Parenthood_logo.svg/1280px-Planned_Parenthood_logo.svg.png",
 description: "Hi! We’re America’s most trusted provider of reproductive health care, and we think we look pretty good for nearly 100 years old.",
 website: "http://www.plannedparenthood.org/",
 twitter: "https://twitter.com/plp",
 token: "3388540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: parenthood
  )

Endorsement.create(
  candidate: hcan,
  user: parenthood
  )

Watching.create(
  user: bobby,
  organization: parenthoodorg
  )

# ------------------------------------------------

# 2 more user-user:

john = User.create(
  uid: "3399511193",
  district: sf
  )

Organization.create(
  user: john
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
  user: john
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
  user: df
  )

Twitteruser.create(
 uid: "33333333",
 nickname: "DianneF",
 name: "Dianne Feinstein",
 location: "San Francisco Location",
 email: "df@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/commons/0/01/DianneFeinstein.jpg",
 description: "United States Senator from California",
 twitter: "https://twitter.com/df", #take real one?
 token: "33333333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: df
  )

dfcan = Candidate.create(
  user: df,
  office: ssen
  )

bb = User.create(
  uid: "44444444",
  district: ca
  )

Organization.create(
  user: bb
  )

Twitteruser.create(
 uid: "44444444",
 nickname: "Babs",
 name: "BARBARA BOXER",
 location: "San Francisco County",
 email: "bb@gmail.com",
 image: "http://cdn-media.leanin.org/wp-content/uploads/2013/03/BarbaraBoxer_290.jpg",
 description: "Democratic U.S. Senator from California",
 twitter: "https://twitter.com/df", #take real one?
 token: "44444444-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: bb
  )

bbcan = Candidate.create(
  user: bb,
  office: jsen
  )



cf = User.create(
  uid: "44444333",
  district: ca
  )

Organization.create(
  user: cf
  )

Twitteruser.create(
 uid: "44444333",
 nickname: "Carly",
 name: "Carly Fiorina",
 location: "San Francisco County",
 email: "cf@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Carly_fiorina_speaking.jpg/220px-Carly_fiorina_speaking.jpg",
 description: "Businesswoman, wife, mother, & grandmother. A conservative who believes in unlocking human potential & holding govt accountable.",
 twitter: "https://twitter.com/df", #take real one?
 token: "44444333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: cf
  )

Candidate.create(
  user: cf,
  office: jsen
  )


as = User.create(
  uid: "446666333",
  district: ca
  )

Organization.create(
  user: as
  )

Twitteruser.create(
 uid: "446666333",
 nickname: "Schiffi",
 name: "Adam Schiff",
 location: "San Francisco County",
 email: "cf@gmail.com",
 image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8baTC74OAzAICdMGrSavHQZC6DnmCZUl8gTBZDi0K0U4B0wD4",
 description: "Representing California's 28th Congressional District and Ranking Member of the House Intelligence Committee.",
 twitter: "https://twitter.com/as", #take real one?
 token: "446666333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: as
  )

Candidate.create(
  user: as,
  office: ssen
  )

# ----------------
# 2 more organizations
# ------------------

nra = User.create(
  uid: "999952223",
  district: usa
  )

Organization.create(
  user: nra
  )

Twitteruser.create(
 uid: "999952223",
 nickname: "NRA",
 name: "National Rifle Association",
 location: "San Francisco",
 email: "nra@gmail.com",
 image: "https://upload.wikimedia.org/wikipedia/en/thumb/7/73/National_Rifle_Association.svg/1024px-National_Rifle_Association.svg.png",
 description: "A house and a gun for every American",
 twitter: "https://twitter.com/nra",
 token: "999952223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: nra
  )


 srclub = User.create(
  uid: "222252223",
  district: usa
  )

srcluborg = Organization.create(
  user: srclub
  )

Twitteruser.create(
 uid: "222252223",
 nickname: "SierraC",
 name: "SierraClub",
 location: "USA",
 email: "srclub@gmail.com",
 image: "http://www.stevestenger.com/wp-content/uploads/2014/10/sierraclub-logo.png",
 description: "Since 1892, the Sierra Club has been working to protect communities, wild places, and the planet itself.",
 twitter: "https://twitter.com/srclub",
 token: "222252223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: srclub
  )

Endorsement.create(
  candidate: bbcan,
  user: parenthood
  )

Endorsement.create(
  candidate: dfcan,
  user: srclub
  )

Endorsement.create(
  candidate: jbcan,
  user: nra
  )

Watching.create(
  user: john,
  organization: parenthoodorg
  )

Watching.create(
  user: bobby,
  organization: srcluborg
  )

Watching.create(
  user: anna,
  organization: srcluborg
  )

Watching.create(
  user: anna,
  organization: parenthoodorg
  )


#------------------------------------------------

catholic_vote = User.create(
  uid: "888852223",
  district: usa
  )

catholic_vote_org = Organization.create(
  user: catholic_vote
  )

Twitteruser.create(
 uid: "888852223",
 nickname: "CatholicVote.org",
 name: "CatholicVote",
 location: "USA",
 image: "https://upload.wikimedia.org/wikipedia/en/3/30/Catholicvote.org_logo.jpg",
 description: "CatholicVote.org is a community of patriotic Americans who believe our nation’s founding principles are good and true, and worth fighting for.",
 token: "888852223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: catholic_vote
  )

#--------
go_proud = User.create(
  uid: "7777152223",
  district: usa
  )

go_proud_org = Organization.create(
  user: go_proud
  )

Twitteruser.create(
 uid: "7777152223",
 nickname: "GOProud",
 name: "GOProud",
 location: "USA",
 image: "https://upload.wikimedia.org/wikipedia/en/9/91/GOProud_logo.png",
 description: "An organization for gay conservatives and their allies.",
 token: "7777152223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: go_proud
  )
#----------------

#--------
nrlc = User.create(
  uid: "7744152223",
  district: usa
  )

nrlc_org = Organization.create(
  user: nrlc
  )

Twitteruser.create(
 uid: "7744152223",
 nickname: "NRLC",
 name: "National Right to Life Committee",
 location: "USA",
 image: "http://nrlc.org/site/wp-content/uploads/header0114.png",
 description: "National Right to Life, the federation of 50 state right-to-life affiliates & more than 3,000 local chapters, is the nation’s oldest & largest #prolife org.",
 token: "7744152223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: nrlc
  )

#--------
smg = User.create(
  uid: "7744157777",
  district: usa
  )

smg_org = Organization.create(
  user: smg
  )

Twitteruser.create(
 uid: "7744157777",
 nickname: "SMG",
 name: "The Scotts Miracle-Gro Company",
 location: "USA",
 image: "https://upload.wikimedia.org/wikipedia/en/f/f8/Scotts-miracle-gro_logo.png",
 description: "News & insights from The Scotts Miracle-Gro Company. Follow us to see how we are helping people of all ages express themselves on their own piece of the Earth.",
 token: "7744157777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: smg
  )
#----------------
#--------
lwal = User.create(
  uid: "7744157777",
  district: usa
  )

lwal_org = Organization.create(
  user: lwal
  )

Twitteruser.create(
 uid: "7744157777",
 nickname: "Lechy",
 name: "Lech Walesa",
 location: "Poland",
 image: "https://upload.wikimedia.org/wikipedia/commons/8/87/Lech_Walesa_-_2009.jpg",
 description: "Former president of Poland",
 token: "7744157777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: lwal )

#----------------------

dt = User.create(
  uid: "66666333",
  district: ca
  )

dt_org = Organization.create(
  user: dt
  )

Twitteruser.create(
 uid: "66666333",
 nickname: "Donald",
 name: "Donald Trump",
 location: "USA",
 image: "https://pbs.twimg.com/profile_images/1980294624/DJT_Headshot_V2_400x400.jpg",
 description: "MAKE AMERICA GREAT AGAIN!",
 token: "66666333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: dt
  )

dt_can = Candidate.create(
  user: dt,
  office: president
  )


#--------
dr = User.create(
  uid: "7744153333",
  district: usa
  )

dr_org = Organization.create(
  user: dr
  )

Twitteruser.create(
 uid: "7744153333",
 nickname: "Dennis",
 name: "Dennis Rodman",
 location: "USA",
 image: "https://upload.wikimedia.org/wikipedia/commons/9/96/Rodman_Lipofsky.jpg",
 description: "Five-time NBA champion",
 token: "7744153333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
 user: dr
)
 #--------

 #--------

Endorsement.create(
  candidate: dt_can,
  user: smg
  )

Endorsement.create(
  candidate: dt_can,
  user: dr
  )

Endorsement.create(
  candidate: dt_can,
  user: nra
  )

Endorsement.create(
  candidate: jbcan,
  user: smg
  )

Endorsement.create(
  candidate: jbcan,
  user: catholic_vote
  )

Endorsement.create(
  candidate: jbcan,
  user: nrlc
  )

Endorsement.create(
  candidate: jbcan,
  user: lwal
  )

Watching.create(
  user: dr,
  organization: go_proud_org
  )

Watching.create(
  user: lwal,
  organization: catholic_vote_org
  )

# San Jose USE CASES
jose = District.find(2)

# San Jose Office
council = Office.create(
  title: "City Council",
  election_date: '09/1/2016'
  )

# San Jose Users
allen_u = User.create(
  uid: "1111111111",
  district: jose
  )
lan_u = User.create(
  uid: "2222222222",
  district: jose
  )
alex_u = User.create(
  uid: "3333333333",
  district: jose
  )

# San Jose Candidates
allen_c = Candidate.create(
  user: allen_u,
  office: council,
  )

lan_c = Candidate.create(
  user: lan_u,
  office: council,
  )

alex_c = Candidate.create(
  user: alex_u,
  office: council,
  )

# San Jose Twitter Users
allen_t = Twitteruser.create(
  uid: "11111111",
  nickname: "Allen MC",
  name: "Allen Ming Chiu",
  location: "San Jose",
  email: "AMC@gmail.com",
  image:
   "http://www.usanz2015.com/media/pics/site/imagecache/C/5/C54A46D1952EC1ADFC6CBFCD93EC3F1E.jpg",
  description:
   "As a San Jose District 4 homeowner of 12 years, a single father of
two boys, and extensive local community and business experience spanning
25 years, I am ready to lead and provide effective leadership. ",
  website: "https://www.sanjoseca.gov/DocumentCenter/View/39445",
  twitter: "https://twitter.com/",
  token: "11111111111-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: allen_u,
  )

lan_t = Twitteruser.create(
  uid: "222222222",
  nickname: "LanDiep",
  name: "Lan Diep",
  location: "San Jose",
  email: "LP@gmail.com",
  image:
   "http://files.equaljusticeworks.org/images/lan-diep.jpg",
  description:
   "I know that failure builds character and lays the groundwork for eventual success. But that does not make it any easier to fail so publicly and by such a thin margin of just 13 votes.",
  website: "http://lanforsanjose.com/",
  twitter: "https://twitter.com/",
  token: "22222222-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: lan_u,
  )

alex_t = Twitteruser.create(
  uid: "3333333333",
  nickname: "AlexTorres",
  name: "Alex Torres",
  location: "San Jose",
  email: "AT@gmail.com",
  image:
   "https://i.vimeocdn.com/video/512191722_640.jpg",
  description:
   "My campaign for D4 is moving forward with much support and success from our neighbors and local businesses.",
  website: "http://www.alextorresford4.com/",
  twitter: "https://twitter.com/alextorresford4",
  token: "3333333333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: alex_u,
  )

# San Jose Organizations

bng_u = User.create(
  uid: "55555555",
  district: jose
  )

bng_o = Organization.create(
  user: bng_u
  )

bng_t = Twitteruser.create(
  uid: "55555555",
  nickname: "Berryessa",
  name: "Berryessa Neighborhood Group",
  location: "San Jose",
  email: "BNG@gmail.com",
  image:
   "https://i.vimeocdn.com/video/512191722_640.jpg",
  description:
   "The purpose of this group is to give our community a place to meet and communicate on topics relating to our neighborhood. This is an open forum for neighborhood issues, complaints, alerts, information sharing, event information, school information, etc.",
  website: "https://groups.yahoo.com/neo/groups/berryessa_neighbors/info?referrer=AlumRockTalks",
  twitter: "https://twitter.com",
  token: "55555555-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: bng_u,
  )

lrrt_u = User.create(
  uid: "66666666",
  district: jose
  )

lrrt_o = Organization.create(
  user: lrrt_u
  )

lrrt_t = Twitteruser.create(
  uid: "66666666",
  nickname: "La Raza",
  name: "La Raza Round Table",
  location: "San Jose",
  email: "LRRT@gmail.com",
  image:
   "http://democracy.com/App_Uploads/DarcieGreen-post-image-large-635470871719170000.jpg",
  description:
   "La Raza Roundtable brings together community organizations, community leaders, elected officials, private and public sector representatives in leadership capacities that can impact positive change for La Raza.",
  website: "https://www.facebook.com/LaRazaRoundtable/info?tab=overview",
  twitter: "https://twitter.com",
  token: "66666666-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: lrrt_u,
  )

afas_u = User.create(
  uid: "9999999",
  district: jose
  )

afas_o = Organization.create(
  user: afas_u
  )

afas_t = Twitteruser.create(
  uid: "9999999",
  nickname: "American Filipino Association of Seniors",
  name: "American Filipino Association of Seniors",
  location: "San Jose",
  email: "AFAS@gmail.com",
  image:
   "https://scontent.xx.fbcdn.net/hphotos-xpf1/t31.0-8/964775_473469459392695_1290162327_o.jpg",
  description:
   "FILIPINO-AMERICAN SENIOR CITIZENS ASSOCIATION OF SAN DIEGO NORTH COUNTY, CA, INC.",
  website: "https://www.facebook.com/MiraMesaFASCA",
  twitter: "https://twitter.com",
  token: "9999999-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: afas_u,
  )

uso_u = User.create(
  uid: "33334444",
  district: jose
  )

uso_o = Organization.create(
  user: uso_u
  )

uso_t = Twitteruser.create(
  uid: "33334444",
  nickname: "USO",
  name: "USO SAN JOSE",
  location: "San Jose",
  email: "USO@gmail.com",
  image:
   "http://www.sleepinginairports.net/images/lounges/uso.jpg",
  description:
   "Make a gift ‘in honor of’ or ‘in memory of’ a family member or other loved one – made during your lifetime or in your will – and show your support and commitment to our brave men and women in uniform.",
  website: "http://www.uso.org/",
  twitter: "https://twitter.com",
  token: "33334444-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: uso_u,
  )

# San Jose endoresements
Endorsement.create(
  candidate: alex_c,
  user: uso_u
  )

Endorsement.create(
  candidate: alex_c,
  user: afas_u
  )

Endorsement.create(
  candidate: lan_c,
  user: lrrt_u
  )

Endorsement.create(
  candidate: allen_c,
  user: bng_u
  )

Endorsement.create(
  candidate: allen_c,
  user: afas_u
  )

Endorsement.create(
  candidate: allen_c,
  user: lrrt_u
  )

# San Jose citizens
first = User.create(
  uid: "828383283",
  district: jose
  )

second = User.create(
  uid: "234342342",
  district: jose
  )

first_t = Twitteruser.create(
  uid: "3333333333",
  nickname: "Amy",
  name: "Amy C",
  location: "San Jose",
  email: "AT@gmail.com",
  image:
   "http://journalism.missouri.edu/wp-content/uploads/2011/10/amy-simons-20131-682x1024.jpg",
  description:
   "I'm the princess of san jose",
  token: "3333333333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: first
  )

second_t = Twitteruser.create(
  uid: "3333333333",
  nickname: "Allison",
  name: "Allison C",
  location: "San Jose",
  email: "AT@gmail.com",
  image:
   "http://images1.wikia.nocookie.net/__cb20111122231648/sonic/images/7/74/Amy_Rose.png",
  description:
   "CHEEEEEEEEEEEEESE",
  token: "3333333333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
  user: second
  )

# San Jose watches

Watching.create(
  user: first,
  organization: lrrt_o
  )

Watching.create(
  user: first,
  organization: bng_o
  )

Watching.create(
  user: first,
  organization: uso_o
  )

Watching.create(
  user: second,
  organization: lrrt_o
  )

Watching.create(
  user: second,
  organization: uso_o
  )

#--------------------------------------
# District.create(
#   name: "USA"
#   )

# Office.create(
#   title: "President",
#   district: 1
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
