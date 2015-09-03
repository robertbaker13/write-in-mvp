###################################################################### districts:

USA = District.create( name: "USA" )
  president      = Office.create( title: "President", district: USA )

  CA = District.create( name: "California", parent: USA )
    ssen     = Office.create( title: "Senior Senator", district: CA )
    jsen     = Office.create( title: "Junior Senator", district: CA )
    governor = Office.create( title: "Governor", district: CA )

    sfc = District.create( name: "San Francisco County", parent: CA )
      usrep = Office.create( title: "US House Representative", district: sfc)
      sfrep = Office.create( title: "CA State Senator", district: sfc)

      sf  = District.create( name: "San Francisco", parent: sfc )
        sfsrep = Office.create( title: "CA State House Representative", district: sf)
        mayor = Office.create( title: "Mayor", district: sf)
        sft  = Office.create(title: "Treasurer", district: sf )

    alc = District.create( name: "Alameda County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: alc)
      sfcrep = Office.create( title: "CA State Senator", district: alc)

      oak = District.create( name: "Oakland", parent: alc )
      berk = District.create( name: "Berkeley", parent: alc )
      alam = District.create( name: "Alameda", parent: alc )

    scc = District.create( name: "Santa Clara County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: scc)
      sfcrep = Office.create( title: "CA State Senator", district: scc)

      sj = District.create( name: "San Jose", parent: scc )

    ccc = District.create( name: "Contra Costa County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: ccc)
      sfcrep = Office.create( title: "CA State Senator", district: ccc)

      herc = District.create( name: "Hercules", parent: ccc )

    lc  = District.create( name: "Lake County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: lc)
      sfcrep = Office.create( title: "CA State Senator", district: lc)

    mrc = District.create( name: "Marin County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: mrc)
      sfcrep = Office.create( title: "CA State Senator", district: mrc)

      marin = District.create( name: "Marin", parent: mrc )

    npc = District.create( name: "Napa County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: npc)
      sfcrep = Office.create( title: "CA State Senator", district: npc)

      napa = District.create( name: "Napa", parent: npc )

    mdc = District.create( name: "Mendocino County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: mdc)
      sfcrep = Office.create( title: "CA State Senator", district: mdc)

      ukiah = District.create( name: "Ukiah", parent: mdc )

    smc = District.create( name: "San Mateo County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: smc)
      sfcrep = Office.create( title: "CA State Senator", district: smc)

      mtv = District.create( name: "Mountain View", parent: smc )
      rwc = District.create( name: "Redwood City", parent: smc )

    soc = District.create( name: "Solano County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: soc)
      sfcrep = Office.create( title: "CA State Senator", district: soc)

    snc = District.create( name: "Sonoma County", parent: CA )
      sfcrep = Office.create( title: "US House Representative", district: snc)
      sfcrep = Office.create( title: "CA State Senator", district: snc)

      snm = District.create( name: "Sonoma", parent: snc )


###################################################################### user-organizations:

parenthood = User.create( uid: "3388550193", district: USA )

parenthood_org = Organization.create( user: parenthood )

Twitteruser.create( uid: "3388540193", nickname: "pl-parenthood",
                    name: "Planned Parenthood Federation of America", location: "USA", email: "plp@gmail.com",
                    image: "https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Planned_Parenthood_logo.svg/1280px-Planned_Parenthood_logo.svg.png",
                    description: "Hi! We’re America’s most trusted provider of reproductive health care, and we think we look pretty good for nearly 100 years  d.",
                    website: "http://www.plannedparenthood.org/",
                    twitter: "https://twitter.com/plp", token: "3388540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: parenthood )


catholic_vote = User.create( uid: "888852223", district: USA )

catholic_vote_org = Organization.create(user: catholic_vote )

Twitteruser.create( uid: "888852223", nickname: "CatholicVote.org", name: "CatholicVote", location: "USA",
                    image: "https://upload.wikimedia.org/wikipedia/en/3/30/Catholicvote.org_logo.jpg",
                    description: "CatholicVote.org is a community of patriotic Americans who believe our nation’s founding principles are good and true, and worth fighting for.", token: "888852223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: catholic_vote )



move_on = User.create( uid: "188852223", district: USA )

move_on_org = Organization.create(user: move_on )

Twitteruser.create( uid: "188852223", nickname: "MoveOn.org", name: "MoveOn", location: "USA",
                    image: "https://pbs.twimg.com/profile_images/634350026786013185/06gso-dN_400x400.png",
                    description: "America's largest independent online political group, with millions of members fighting to make our voices heard in our democracy and win progressive change.", token: "188852223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: move_on )



pflag = User.create( uid: "7272152223", district: USA )

pflag_org = Organization.create( user: pflag )

Twitteruser.create( uid: "7272152223", nickname: "PFLAG", name: "Parents & Friends of Lesbians & Gays", location: "USA",
                    image: "https://pbs.twimg.com/profile_images/606863876701814784/dOoF7KKZ_400x400.jpg",
                    description: "Parents, families, friends, and allies united with LGBTQ people to move equality forward!", token: "7272152223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: pflag )


go_proud = User.create( uid: "7777152223", district: USA )

go_proud_org = Organization.create( user: go_proud )

Twitteruser.create( uid: "7777152223", nickname: "GOProud", name: "GOProud", location: "USA",
                    image: "https://upload.wikimedia.org/wikipedia/en/9/91/GOProud_logo.png",
                    description: "An organization for gay conservatives and their allies.", token: "7777152223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: go_proud )


ca_teachers_assoc = User.create( uid: "7777152223", district: USA )

ca_teachers_assoc_org = Organization.create( user: ca_teachers_assoc )

Twitteruser.create( uid: "123123578", nickname: "CTA", name: "California Teachers' Association", location: "USA",
                    image: "https://pbs.twimg.com/profile_images/428215080627339264/qIpPBrlK_400x400.jpeg",
                    description: "CTA represents more than 325,000 teachers, counselors, librarians, psychologists, nurses, community college and CSU faculty, and education support professionals", token: "123123578-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: ca_teachers_assoc )


nrlc = User.create( uid: "7744152223", district: USA )

nrlc_org = Organization.create( user: nrlc )

Twitteruser.create( uid: "7744152223", nickname: "NRLC", name: "National Right to Life Committee", location: "USA",
                    image: "http://nrlc.org/site/wp-content/uploads/header0114.png",
                    description: "National Right to Life, the federation of 50 state right-to-life affiliates & more than 3,000 local chapters, is the nation’s oldest & largest #prolife org.", token: "7744152223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",user: nrlc )

smg = User.create( uid: "7744157777", district: USA )

smg_org = Organization.create( user: smg )

Twitteruser.create( uid: "7744157777", nickname: "SMG", name: "The Scotts Miracle-Gro Company", location: "USA",
                    image: "https://upload.wikimedia.org/wikipedia/en/f/f8/Scotts-miracle-gro_logo.png",
                    description: "News & insights from The Scotts Miracle-Gro Company. Follow us to see how we are helping people of all ages express themselves on their own piece of the Earth.", token: "7744157777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: smg )


tprvw = User.create( uid: "1724347576", district: USA )

tprvw_org = Organization.create( user: tprvw )

Twitteruser.create( uid: "1724347576", nickname: "TPR", name: "The Paris Review", location: "USA",
                    image: "https://pbs.twimg.com/profile_images/554754592249249793/0Di_ohBs_400x400.jpeg",
                    description: "Quarterly literary magazine founded in 1953.", token: "1724347576-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: tprvw )


nea = User.create( uid: "1724399999", district: USA )

nea_org = Organization.create( user: nea )

Twitteruser.create( uid: "1724399999", nickname: "NEA", name: "National Education Association", location: "USA",
                    image: "https://pbs.twimg.com/profile_images/598125301772767232/07y8BIoE_400x400.jpg",
                    description: "The National Education Association, the nation's largest professional employee organization, is committed to advancing the cause of public education.", token: "1724399999-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: nea )


dwob = User.create( uid: "7744144447", district: USA )

dwob_org = Organization.create( user: dwob )

Twitteruser.create( uid: "7744144447", nickname: "MSF", name: "Doctors Without Borders", location: "USA",
                    image: "https://pbs.twimg.com/profile_images/2767072246/a86211e851acafb19a5abc92b540d379_400x400.png",
                    description: "Providing medical aid where it's needed most.", token: "7744144447-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: dwob )


aclu = User.create( uid: "1714151717", district: USA )

aclu_org = Organization.create( user: aclu )

Twitteruser.create( uid: "1714151717", nickname: "ACLU", name: "American Civil Liberties Union", location: "Washington, DC",
                    image: "https://pbs.twimg.com/profile_images/618476695910100992/F95c5zW3_400x400.jpg",
                    description: "The ACLU is a nonprofit, nonpartisan, public interest law firm and advocacy organization devoted to protecting the basic civil liberties of everyone in America.", token: "1714151717-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: aclu )


nra = User.create( uid: "999952223", district: USA )

nra_org = Organization.create( user: nra )

Twitteruser.create( uid: "999952223", nickname: "NRA", name: "National Rifle Association", location: "San Francisco", email: "nra@gmail.com",
                    image: "https://upload.wikimedia.org/wikipedia/en/thumb/7/73/National_Rifle_Association.svg/1024px-National_Rifle_Association.svg.png",
                    description: "A house and a gun for every American", twitter: "https://twitter.com/nra", token: "999952223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: nra )


srclub = User.create( uid: "222252223", district: USA )

srclub_org = Organization.create( user: srclub )

Twitteruser.create( uid: "222252223", nickname: "SierraC", name: "SierraClub", location: "USA", email: "srclub@gmail.com",
                    image: "http://www.stevestenger.com/wp-content/uploads/2014/10/sierraclub-logo.png",
                    description: "Since 1892, the Sierra Club has been working to protect communities, wild places, and the planet itself.",
                    twitter: "https://twitter.com/srclub", token: "222252223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: srclub )


aufscs = User.create( uid: "292857223", district: USA )

aufscs_org = Organization.create( user: aufscs )

Twitteruser.create( uid: "292857223", nickname: "Americans United", name: "Americans United for Separation of Church & State", location: "Washington, DC", email: "aufscs@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/418778923225186304/oZ41vsiq_400x400.jpeg",
                    description: "Americans United for Separation of Church and State is a national religious liberty watchdog group. We've been protecting the wall of separation since 1947!",
                    twitter: "https://twitter.com/americansunited", token: "292857223-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: aufscs )



###################################################################### user-candidates:

hc = User.create( uid: "3388540193", district: USA ); Organization.create( user: hc ); hcan = Candidate.create( user: hc, office: president )

Twitteruser.create(uid: "3388540193", nickname: "Hillary", name: "Hillary Clinton", location: "Washington DC", email: "hc@gmail.com",
                   image: "http://a4.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE4MDAzNDEwMDU4NTc3NDIy.jpg",
                   description: "Wife, mom, grandma, women+kids advocate, FLOTUS, Senator, SecState, hair icon, pantsuit aficionado, 2016 presidential candidate. Tweets from Hillary signed –H",
                   website: "https://www.hillaryclinton.com/", twitter: "https://twitter.com/hc", token: "3388540193-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz",
                   user: hc )


jb = User.create( uid: "33877777", district: USA); Organization.create( user: jb ); jbcan = Candidate.create(user: jb, office: president )

Twitteruser.create( uid: "33877777", nickname: "Jeb", name: "Jeb Bush", location: "Washington DC", email: "jb@gmail.com",
                    image: "http://www.adweek.com/files/imagecache/node-blog/blogs/jeb-bush-logo-hed-2015.jpg",
                    description: "43rd Governor of the State of Florida", #notsure?
                    twitter: "https://twitter.com/jb", #take real one?
                    token: "33877777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: jb )


dt = User.create( uid: "33887777", district: USA); Organization.create( user: dt ); jbcan = Candidate.create(user: dt, office: president )

Twitteruser.create( uid: "33887777", nickname: "The Don", name: "Donald Trump", location: "Washington DC", email: "dt@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/1980294624/DJT_Headshot_V2_400x400.jpg",
                    description: "Billion dollar toupee", #notsure?
                    twitter: "https://twitter.com/realDonaldTrump", #take real one?
                    token: "33887777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: dt )

bs = User.create( uid: "33888777", district: USA); Organization.create( user: bs ); jbcan = Candidate.create(user: bs, office: president )

Twitteruser.create( uid: "33888777", nickname: "Bernie", name: "Bernard Sanders", location: "Burlington VT", email: "bs@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/593768630619414528/NtUnu7BX_400x400.png",
                    description: "Senator from VT", #notsure?
                    twitter: "https://twitter.com/berniesanders", #take real one?
                    token: "33888777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: bs )


df = User.create( uid: "33333333", district: CA ); Organization.create( user: df ); dfcan = Candidate.create( user: df, office: ssen );

Twitteruser.create( uid: "33333333", nickname: "DianneF", name: "Dianne Feinstein", location: "San Francisco Location", email: "df@gmail.com",
                    image: "https://upload.wikimedia.org/wikipedia/commons/0/01/DianneFeinstein.jpg",
                    description: "United States Senator from California", twitter: "https://twitter.com/df", #take real one?
                    token: "33333333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: df )


bb = User.create( uid: "44444444", district: CA ); Organization.create( user: bb ); bbcan = Candidate.create( user: bb, office: jsen );

Twitteruser.create( uid: "44444444", nickname: "Babs", name: "Barbara Boxer", location: "San Francisco County", email: "bb@gmail.com",
                    image: "http://cdn-media.leanin.org/wp-content/uploads/2013/03/BarbaraBoxer_290.jpg",
                    description: "Democratic U.S. Senator from California", twitter: "https://twitter.com/df", #take real one?
                    token: "44444444-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: bb )


cf = User.create( uid: "44444333", district: CA ); Organization.create( user: cf ); Candidate.create( user: cf, office: president );

Twitteruser.create( uid: "44444333", nickname: "Carly", name: "Carly Fiorina", location: "San Francisco County", email: "cf@gmail.com",
                    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Carly_fiorina_speaking.jpg/220px-Carly_fiorina_speaking.jpg",
                    description: "Businesswoman, wife, mother, & grandmother. A conservative who believes in unlocking human potential & holding govt accountable.", twitter: "https://twitter.com/df", #take real one?
                    token: "44444333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: cf )


as = User.create( uid: "446666333", district: CA ); Organization.create( user: as ); Candidate.create( user: as, office: ssen );

Twitteruser.create( uid: "446666333", nickname: "Schiffi", name: "Adam Schiff", location: "San Francisco County", email: "cf@gmail.com",
                    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8baTC74OAzAICdMGrSavHQZC6DnmCZUl8gTBZDi0K0U4B0wD4",
                    description: "Representing California's 28th Congressional District and Ranking Member of the House Intelligence Committee.", twitter: "https://twitter.com/as", #take real one?
                    token: "446666333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: as )


aa = User.create( uid: "446666322", district: CA ); Organization.create( user: aa ); Candidate.create( user: aa, office: jsen );

Twitteruser.create( uid: "446666322", nickname: "Aki", name: "Akinyemi Agbede", location: "Northern CA", email: "aa@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/604301001214971904/RZ3h_F2n_400x400.jpg",
                    description: "Mathematician", twitter: "https://twitter.com/nextcalsenator", #take real one?
                    token: "446666322-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: aa )


kh = User.create( uid: "446666321", district: CA ); Organization.create( user: kh ); Candidate.create( user: kh, office: jsen );

Twitteruser.create( uid: "446666321", nickname: "Kammy", name: "Kamala Harris", location: "California", email: "kh@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/378800000079087220/b61da72e5e92d0e2068038be092053dc_400x400.jpeg",
                    description: "CA Attorney General & Candidate for US Senate", twitter: "https://twitter.com/KamalaHarris", #take real one?
                    token: "446666321-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: kh )


tm = User.create( uid: "446666329", district: CA ); Organization.create( user: tm ); Candidate.create( user: tm, office: jsen );

Twitteruser.create( uid: "446666329", nickname: "Troy", name: "Troy McComak", location: "Patterson, California", email: "tm@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/2083436298/image_400x400.jpg",
                    description: "", twitter: "https://twitter.com/mccomak", #take real one?
                    token: "446666329-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: tm )


ls = User.create( uid: "446123329", district: CA ); Organization.create( user: ls ); Candidate.create( user: ls, office: jsen );

Twitteruser.create( uid: "446123329", nickname: "Lorie", name: "Loretta Sanchez", location: "Patterson, California", email: "ls@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/2083436298/image_400x400.jpg",
                    description: "I proudly represent California's 46th district in Congress. I serve as a Senior Member on both the Armed Services and Homeland Security Committees.", twitter: "https://twitter.com/lorettasanchez", #take real one?
                    token: "446123329-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: ls )

jb = User.create( uid: "116123329", district: CA ); Organization.create( user: jb ); Candidate.create( user: jb, office: governor );

Twitteruser.create( uid: "116123329", nickname: "Jerry", name: "Edmund Gerald Brown", location: "Sacramento", email: "jb@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/533387964772929536/bzWw-mHV_400x400.jpeg",
                    description: "On Facebook at: http://facebook.com/jerrybrown", twitter: "https://twitter.com/JerryBrownGov", #take real one?
                    token: "116123329-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: jb )

nk = User.create( uid: "864223329", district: CA ); Organization.create( user: nk ); Candidate.create( user: nk, office: governor );

Twitteruser.create( uid: "864223329", nickname: "Tush", name: "Neel Tushar Kashkari", location: "Washington, DC", email: "nk@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/425737635571564544/wH10ADaz_400x400.png",
                    description: "", twitter: "https://twitter.com/neelkashkari", #take real one?
                    token: "864223329-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: nk )

np = User.create( uid: "764223329", district: CA ); Organization.create( user: np ); Candidate.create( user: np, office: usrep );

Twitteruser.create( uid: "764223329", nickname: "Nancy", name: "Nancy Pelosi", location: "San Francisco", email: "np@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/571313158510223360/wnSl3yXF_400x400.jpeg",
                    description: "Democratic Leader, focused on strengthening America's middle class and creating jobs; mother, grandmother, dark chocolate connoisseur.", twitter: "https://twitter.com/NancyPelosi", #take real one?
                    token: "764223329-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: np )

jd = User.create( uid: "864993329", district: CA ); Organization.create( user: jd ); Candidate.create( user: jd, office: usrep );

Twitteruser.create( uid: "864993329", nickname: "JD", name: "John Dennis", location: "California", email: "jd@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/638403424879529984/s456Z_Xr_400x400.jpg",
                    description: "", twitter: "https://twitter.com/johndennisweei", #take real one?
                    token: "864993329-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: jd )


ml = User.create( uid: "823991129", district: CA ); Organization.create( user: ml ); Candidate.create( user: ml, office: sfrep );

Twitteruser.create( uid: "823991129", nickname: "Mark", name: "Mark Leno", location: "Broadmoor, CA", email: "ml@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/1444413542/2010WebsiteHeadshot_400x400.jpg",
                    description: "Senator Mark Leno represents the 11th Senate District of California, which includes San Francisco, Daly City, Colma, Broadmoor and parts of South San Francisco.", twitter: "https://twitter.com/MarkLeno", #take real one?
                    token: "823991129-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: ml )


hkd = User.create( uid: "8336991129", district: CA ); Organization.create( user: hkd ); Candidate.create( user: hkd, office: sfrep );

Twitteruser.create( uid: "8336991129", nickname: "Harm", name: "Harmeet K Dhillon", location: "San Francisco", email: "hkd@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/526444599519105026/amJDdA1H_400x400.jpeg",
                    description: "Attorney, politician, knitter, yarntrepreneur, sailor.", twitter: "https://twitter.com/pnjaban", #take real one?
                    token: "8336991129-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: hkd )


dvc = User.create( uid: "8566991129", district: CA ); Organization.create( user: dvc ); Candidate.create( user: dvc, office: sfsrep );

Twitteruser.create( uid: "8566991129", nickname: "Dave", name: "David Chiu", location: "San Francisco", email: "dvc@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/1257297886/davidChiuProfileSquare_400x400.PNG",
                    description: "California State Assemblymember representing the 17th Assembly District, which encompasses the neighborhoods of eastern San Francisco.", twitter: "https://twitter.com/DavidChiu", #take real one?
                    token: "8566991129-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: dvc )


plt = User.create( uid: "1166991129", district: CA ); Organization.create( user: plt ); Candidate.create( user: plt, office: sfsrep );

Twitteruser.create( uid: "1166991129", nickname: "Phil", name: "Phillip Ting", location: "Colma, CA", email: "plt@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/1410701002/Profile_2_400x400.jpg",
                    description: "Assemblymember for San Francisco, Daly City and Colma. Launched GoSolarSF. Fighting foreclosures and mortgage fraud. Founded @ResetSF", twitter: "https://twitter.com/PhilTing", #take real one?
                    token: "1166991129-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: plt )


edl = User.create( uid: "2126991129", district: CA ); Organization.create( user: edl ); Candidate.create( user: edl, office: mayor );

Twitteruser.create( uid: "2126991129", nickname: "Ed", name: "Edwin Lee", location: "San Francisco, CA", email: "edl@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/605436334476394496/hzEqicQS_400x400.jpg",
                    description: "I am honored to serve as the 43rd Mayor of San Francisco - the Innovation Capital of the World!", twitter: "https://twitter.com/mayoredlee", #take real one?
                    token: "2126991129-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: edl )


afw = User.create( uid: "2326991129", district: CA ); Organization.create( user: afw ); Candidate.create( user: afw, office: mayor );

Twitteruser.create( uid: "2326991129", nickname: "Amy", name: "Amy Farah Weiss", location: "San Francisco, CA", email: "afw@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/618964843454857216/ziIWGKKN_400x400.jpg",
                    description: "Say Yes-In-My-Back-Yard to inclusive and sustainable development, an economy that truly shares, & local government that supports all SF neighbor(hood)s.", twitter: "https://twitter.com/weissformayor", #take real one?
                    token: "2326991129-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: afw )


foh = User.create( uid: "2326912345", district: CA ); Organization.create( user: foh ); Candidate.create( user: foh, office: mayor );

Twitteruser.create( uid: "2326912345", nickname: "Franny", name: "Francisco Herrera", location: "San Francisco, CA", email: "foh@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/631106564988862464/WYXTH9gO_400x400.jpg",
                    description: "Running for Mayor of San Francisco. Vote on November 3. Official Green party candidate #Francisco4Mayor / https://medium.com/@Francisco4Mayor …", twitter: "https://twitter.com/fherrerasfmayor", #take real one?
                    token: "2326912345-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: foh )


jci = User.create( uid: "2346515355", district: CA ); Organization.create( user: jci ); Candidate.create( user: jci, office: sft );

Twitteruser.create( uid: "2346515355", nickname: "Jose", name: "Jose Cisneros", location: "San Francisco, CA", email: "jci@gmail.com",
                    image: "https://pbs.twimg.com/profile_images/2596581693/3f7gt2n48ejftug7qobn_400x400.jpeg",
                    description: "Elected Treasurer-Tax Collector of the City and County of San Francisco.", twitter: "https://twitter.com/treasurersf", #take real one?
                    token: "2346515355-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: jci )


lwal = User.create( uid: "7744157777", district: USA )

lwal_org = Organization.create( user: lwal )

Twitteruser.create( uid: "7744157777", nickname: "Lechy", name: "Lech Walesa", location: "Poland",
                    image: "https://upload.wikimedia.org/wikipedia/commons/8/87/Lech_Walesa_-_2009.jpg",
                    description: "Former president of Poland",
                    token: "7744157777-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: lwal )


dr = User.create( uid: "7744153333", district: USA )

dr_org = Organization.create( user: dr )

Twitteruser.create( uid: "7744153333", nickname: "Dennis", name: "Dennis Rodman", location: "USA",
                    image: "https://upload.wikimedia.org/wikipedia/commons/9/96/Rodman_Lipofsky.jpg",
                    description: "Five-time NBA champion", token: "7744153333-Zmzg52Yfc2MKiMMicq6ILXxq79kmsUa3NEgYSzz", user: dr )



###################################################################### endorsements:



# president
Endorsement.create( candidate: Candidate.find_by(user: hc), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: bs), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: hc), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: hc), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: bs), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: hc), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: bs), user: dwob )
Endorsement.create( candidate: Candidate.find_by(user: bs), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: hc), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: dt), user: aufscs )

# ssen
Endorsement.create( candidate: Candidate.find_by(user: df), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: df), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: as), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: df), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: df), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: df), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: df), user: dwob )
Endorsement.create( candidate: Candidate.find_by(user: as), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: df), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: df), user: aufscs )

# jsen
Endorsement.create( candidate: Candidate.find_by(user: bb), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: tm), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: aa), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: dwob )
Endorsement.create( candidate: Candidate.find_by(user: aa), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: bb), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: aufscs )

# governor
Endorsement.create( candidate: Candidate.find_by(user: jb), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: dwob )
Endorsement.create( candidate: Candidate.find_by(user: nk), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: nk), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: aufscs )

# usrep
Endorsement.create( candidate: Candidate.find_by(user: np), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: np), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: np), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: jd), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: np), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: np), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: np), user: dwob )
Endorsement.create( candidate: Candidate.find_by(user: np), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: np), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: jd), user: aufscs )

# sfrep
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: ml), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: ml), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: aufscs )

# sfsrep
Endorsement.create( candidate: Candidate.find_by(user: dvc), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: dvc), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: nea )
Endorsement.create( candidate: Candidate.find_by(user: dvc), user: dwob )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: aufscs )

# mayor
Endorsement.create( candidate: Candidate.find_by(user: afw), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: afw), user: move_on )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: ca_teachers_assoc )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: tprvw )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: aclu )
Endorsement.create( candidate: Candidate.find_by(user: afw), user: srclub )
Endorsement.create( candidate: Candidate.find_by(user: afw), user: aufscs )

# sft
Endorsement.create( candidate: Candidate.find_by(user: jci), user: parenthood )
Endorsement.create( candidate: Candidate.find_by(user: jci), user: pflag )
Endorsement.create( candidate: Candidate.find_by(user: jci), user: aclu )




# president
Endorsement.create( candidate: Candidate.find_by(user: hc), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: bs), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: hc), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: hc), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: bs), user: smg )

# ssen
Endorsement.create( candidate: Candidate.find_by(user: df), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: df), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: as), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: df), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: df), user: smg )

# jsen
Endorsement.create( candidate: Candidate.find_by(user: bb), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: tm), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: aa), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: kh), user: smg )

# governor
Endorsement.create( candidate: Candidate.find_by(user: jb), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: jb), user: smg )

# usrep
Endorsement.create( candidate: Candidate.find_by(user: np), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: np), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: np), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: jd), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: np), user: smg )

# sfrep
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: ml), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: hkd), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: ml), user: smg )
Endorsement.create( candidate: Candidate.find_by(user: dvc), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: dvc), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: plt), user: smg )
# mayor

Endorsement.create( candidate: Candidate.find_by(user: afw), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: afw), user: catholic_vote )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: go_proud )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: nrlc )
Endorsement.create( candidate: Candidate.find_by(user: edl), user: smg )
Endorsement.create( candidate: Candidate.find_by(user: jci), user: nra )
Endorsement.create( candidate: Candidate.find_by(user: jci), user: catholic_vote )
