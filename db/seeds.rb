User.delete_all
User.reset_pk_sequence
Concert.delete_all
Concert.reset_pk_sequence
Memory.delete_all
Memory.reset_pk_sequence

user1 = User.create({first_name:"Liz", last_name:"Burke", username:"lizburkechi", email: "lizburkechi@gmail.com"})
user2 = User.create({first_name:"Obie", last_name:"Burke", username:"oberon811", email: "goodboyobie@gmail.com"})

show1 = Concert.create({artist: "Erykah Badu", display_name: "Erykah Badu at the Arena Theatre", date: DateTime.strptime("03/06/2009", "%m/%d/%Y"), city: "Houston", state: "TX", venue: "Arena Theatre"})
show2 = Concert.create({artist: "Daniel Caesar", display_name: "Daniel Caesar w guest KOFFEE", date: DateTime.strptime("09/10/2019", "%m/%d/%Y"), city: "Atlanta", state: "GA", venue: "Fox Theatre Atlanta"})
show3 = Concert.create({artist: "Yuck", display_name: "Pitchfork Music Festival 2011", date: DateTime.strptime("07/25/2011", "%m/%d/%Y"), city: "Chicago", state: "IL", venue: "Union Park"})
show4 = Concert.create({artist: "Cloud Nothings", display_name: "Cloud Nothings at Ottobar", date: DateTime.strptime("12/06/2018", "%m/%d/%Y"), city: "Baltimore", state: "MD", venue: "Ottobar"})
show5 = Concert.create({artist: "TV on the Radio", display_name: "TV on the Radio at the Wiltern", date: DateTime.strptime("06/11/2008","%m/%d/%Y"), city: "Los Angeles", state: "CA", venue: "The Wiltern"})

memory1 = Memory.create({title: "Erykah Badu Opening Song", details: "Clad in a black trench coat and top hat, Erykah Badu stood before the sold-out crowd at New Yorks storied Roseland Ballroom on Monday night crooning the atmospheric opener '20 Feet Tall.' With four backup singers and a seven-piece band to accompany her, Badu was a smoldering torch who warmed and glowed as the night went on. She continued to burn through 'Out My Mind, Just in Time,' which is also the name of this tour, supporting her March release 'New Amerykah Part Two: Return of the Ankh.' The song served as a theme for the evening as she sang, 'I’d lie for you and cry for you… I gotta do my love for you.'", user_id: 1, concert_id: 1})
memory2 = Memory.create({title: "Wish I was there", details: "I really wish I was at this show. I saw a live video of them playing in London at some famous venue and it looked badass!", user_id: 2, concert_id: 4})
memory3 = Memory.create({title: "Operation", details: "On a night that brought the Avett Brothers to town, like-minded individuals still swarmed to Union Park to embrace a band that they had a mere six months to connect with. The crowd was pumped, they knew the words, and Yuck delivered. 'Operation' stood out to me and I contend that it is their best song.  Blasting guitars and a plea to become someone else for somebody else.", user_id: 1, concert_id: 3})

puts "🌱🌱🌱"
binding.pry

puts "hi"