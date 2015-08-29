District.create(
  name: "United States"
  )

10.times do
  District.create(
    name: Faker::Address.city,
    parent_id: District.find_by(name: "United States").id
    )
end

30.times do
User.create(
  twitter_id: rand(1000),
  token: Faker::Name.name,
  expires: Faker::Date.forward(199),
  district_id: District.all.sample.id
  )
end

20.times do
Watching.create(
  observer_id: User.first,
  subject_id: User.all.sample.id,
  )
end

15.times do
Watching.create(
  observer_id: User.last,
  subject_id: User.all.sample.id,
  )
end

5.times do
  Office.create(
    title: ['President', 'Senate', 'Representative', 'Mayor'].sample,
    district_id: District.all.sample.id,
    election_date: Faker::Date.forward(199)
    )
end

30.times do
  Candidate.create(
    user_id: User.limit(6).sample.id,
    office_id: Office.all.sample.id
    )
end

30.times do
  Endorsement.create(
    endorsee_id: Candidate.all.sample.id,
    endorser_id: User.limit(10).sample.id
    )
end

# Subjects of George
tony = User.create(
  twitter_id: 2,
  token: Faker::Name.name,
  expires: Faker::Date.forward(199),
  district_id: District.all.sample.id
  )

ashley = User.create(
  twitter_id: 2,
  token: Faker::Name.name,
  expires: Faker::Date.forward(199),
  district_id: District.all.sample.id
  )

amy = User.create(
  twitter_id: 3,
  token: Faker::Name.name,
  expires: Faker::Date.forward(199),
  district_id: District.all.sample.id
  )

# Endorsements from George's subjects
5.times do
  Endorsement.create(
    endorsee_id: Candidate.all.sample.id,
    endorser_id: tony.id
    )
end

15.times do
  Endorsement.create(
    endorsee_id: Candidate.all.sample.id,
    endorser_id: ashley.id
    )
end

20.times do
  Endorsement.create(
    endorsee_id: Candidate.all.sample.id,
    endorser_id: amy.id
    )
end

# Target subject for report card
george = User.create(
  twitter_id: 1,
  token: Faker::Name.name,
  expires: Faker::Date.forward(199),
  district_id: District.all.sample.id
  )

george.subjects.create(
  subject_id: tony.id
  )

george.subjects.create(
  subject_id: ashley.id
  )


george.subjects.create(
  subject_id: amy.id
  )




