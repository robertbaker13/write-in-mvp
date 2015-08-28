District.create(
  name: "United States"
  )

District.create(
  name: Faker::Address.city,
  parent_id: District.find_by(name: "United States").id
  )

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
  subject_id: User.first,
  observer_id: User.all.sample.id,
  )
end

15.times do
Watching.create(
  subject_id: User.last,
  observer_id: User.all.sample.id,
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
    candidate_id: Candidate.all.sample.id,
    user_id: User.limit(10).sample.id
    )
end


