Fabricator(:user) do
  name 'Bruce Wayne'
  username { sequence(:username) { |i| "bruce#{i}" } }
  email { sequence(:email) { |i| "bruce#{i}@wayne.com" } }
  password 'myawesomepassword'
  trust_level TrustLevel.levels[:basic]
  bio_raw "I'm batman!"
end

Fabricator(:coding_horror, from: :user) do
  name 'Coding Horror'
  username 'CodingHorror'
  email 'jeff@somewhere.com'
  password 'mymoreawesomepassword'
end

Fabricator(:evil_trout, from: :user) do
  name 'Evil Trout'
  username 'eviltrout'
  email 'eviltrout@somewhere.com'
  password 'imafish'
end

Fabricator(:walter_white, from: :user) do
  name 'Walter White'
  username 'heisenberg'
  email 'wwhite@bluemeth.com'
  password 'letscook'
end

Fabricator(:moderator, from: :user) do
  name { sequence(:name) {|i| "A#{i} Moderator"} }
  username { sequence(:username) {|i| "moderator#{i}"} }
  email { sequence(:email) {|i| "moderator#{i}@discourse.org"} }
  moderator true
end

Fabricator(:admin, from: :user) do
  name 'Anne Admin'
  username { sequence(:username) {|i| "anne#{i}"} }
  email { sequence(:email) {|i| "anne#{i}@discourse.org"} }
  admin true
end

Fabricator(:newuser, from: :user) do
  name 'Newbie Newperson'
  username 'newbie'
  email 'newbie@new.com'
  trust_level TrustLevel.levels[:newuser]
end
