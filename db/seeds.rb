puts "🌱 Seeding spices..."

Restaurant.create(
  name: "Thai Thai Asian Bistro", 
  city: "Norman", 
  state: "OK", 
  food_type: "Thai", 
  phone: 4053102026, 
  website: "https://www.thaithainorman.com/#/"
  online_ordering: true,
  image: "https://www.visitnorman.com/uploads/Thai-Thai-Asian-Bistro.jpg"
)

Restaurant.create(
  name: "Hideaway Pizza",
  city: "Norman",
  state: "OK",
  food_type: "Italian",
  phone: 4052924777,
  website: "https://www.hideawaypizza.com/",
  online_ordering: true,
  image: "https://images.squarespace-cdn.com/content/v1/5cbf5a350cf57df7fb43982e/1576701466298-IZJRLUGZ6S8HQHXEJFUZ/OKC+Sign+Small.jpg"
)

Restaurant.create(
  name: "Royal Bavaria",
  city: "Oklahoma City",
  state: "OK",
  food_type: "German",
  phone: 4057997666,
  website: "https://www.royal-bavaria.com/",
  online_ordering: false,
  image: "https://fastly.4sqi.net/img/general/600x600/N46yAlCI1R2LVr4I1s61OGNIgn-RMTxltkchUTeC6lY.jpg"
)

Restaurant.create(
  name: "Campo Verde",
  city: "Arlington",
  state: "TX",
  food_type: "Mexican",
  phone: 6822597154,
  website: ,
  online_ordering: true,
  image: "https://img-aws.ehowcdn.com/700x/www.onlyinyourstate.com/wp-content/uploads/2021/12/campo5.png"
)

puts "✅ Done seeding!"
