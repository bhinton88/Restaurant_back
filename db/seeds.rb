puts "🌱 Seeding Restaurants, foods..."

Restaurant.create(
  name: "Thai Thai Asian Bistro", 
  city: "Norman", 
  state: "OK", 
  food_type: "Thai", 
  phone_number: 4053102026, 
  website: "https://www.thaithainorman.com/#/",
  online_ordering: 'Yes',
  image: "https://www.visitnorman.com/uploads/Thai-Thai-Asian-Bistro.jpg"
)

Restaurant.create(
  name: "Hideaway Pizza",
  city: "Norman",
  state: "OK",
  food_type: "Italian",
  phone_number: 4052924777,
  website: "https://www.hideawaypizza.com/",
  online_ordering: 'Yes',
  image: "https://images.squarespace-cdn.com/content/v1/5cbf5a350cf57df7fb43982e/1576701466298-IZJRLUGZ6S8HQHXEJFUZ/OKC+Sign+Small.jpg"
)

Restaurant.create(
  name: "Royal Bavaria",
  city: "Oklahoma City",
  state: "OK",
  food_type: "German",
  phone_number: 4057997666,
  website: "https://www.royal-bavaria.com/",
  online_ordering: 'No',
  image: "https://fastly.4sqi.net/img/general/600x600/N46yAlCI1R2LVr4I1s61OGNIgn-RMTxltkchUTeC6lY.jpg"
)

Restaurant.create(
  name: "Campo Verde",
  city: "Arlington",
  state: "TX",
  food_type: "Mexican",
  phone_number: 6822597154,
  online_ordering: 'Yes',
  image: "https://img-aws.ehowcdn.com/700x/www.onlyinyourstate.com/wp-content/uploads/2021/12/campo5.png"
)

Dish.create(
  dish_name: "Pad Kra Pao",
  restaurant_id: 1,
  price: 14.00,
  description:"Minced chicken, pork, tofu, or vegetables stir fried with chopped green beans, bell peppers, onions, and fresh basil leaves in a basil stir fry sauce. Served with a side of steamed white rice topped with a fried egg",
  image: "https://menufyproduction.imgix.net/637943867641285015+865516.png?auto=compress,format&h=400&w=600&fit=max"
)

Dish.create(
  dish_name: "Evil Jungle Curry",
  restaurant_id: 1,
  price: 13.00,
  description: " Minced chicken (or fried tofu) with coconut milk, chili paste, and shredded cabbage. Garnished with chopped red & green bell peppers and cilantro.",
  image: "https://menufyproduction.imgix.net/637942013954887514+864805.png?auto=compress,format&h=400&w=600&fit=max"
)

Dish.create(
  dish_name: "Garlic Stir Fry",
  restaurant_id: 1,
  price: 12.00,
  description: "Selected meat, tofu, or vegetables sautéed with garlic sauce, mushrooms, baby corn, carrots, red & green bell peppers, and onions.",
  image: "https://menufyproduction.imgix.net/637942011546695538+864798.png?auto=compress,format&h=400&w=600&fit=max"
)

Dish.create(
  dish_name: "Basil Stir Fry",
  restaurant_id: 1,
  price: 12.00,
  description: "Selected meat, tofu, or vegetables stir-fried with fresh basil leaves, chili, red & green bell peppers, onions, and green beans.",
  image: "https://menufyproduction.imgix.net/637942369087353221+864907.png?auto=compress,format&h=400&w=600&fit=max"  
)

Dish.create(
  dish_name: "The ATW",
  restaurant_id: 2,
  price: 14.99,
  description: "Hideaway Red Sauce, Mozzarella, Pepperoni, Sausage, Black Olives, Green Bell Pepper, Mushrooms, Red Onion",
  image: "https://images.squarespace-cdn.com/content/v1/5cbf5a350cf57df7fb43982e/1556913782298-S4UDERUBM4R2BHTFVCS1/ATW.png?format=750w"
)

Dish.create(
  dish_name: "Pepperonipalooza",
  restaurant_id: 2,
  price: 13.59,
  description: "Red sauce, mozzarella, our traditional pepperoni, cup 'n' curl pepperoni, and deli pepperoni, topped with our Parmesan-herb shake.",
  image: "https://images.squarespace-cdn.com/content/v1/5cbf5a350cf57df7fb43982e/1586206380263-0BR398YMMH9LV8RU896Y/Palooza.png?format=750w"
)

Dish.create(
  dish_name: "Homemade Lasagna",
  restaurant_id: 2,
  price: 11.99,
  description: "Made from scratch! Lasagna noodles layered with ricotta, Parmesan and mozzarella cheeses and our Italian sausage marinara sauce, topped with melted mozzarella!",
  image: "https://assets-global.website-files.com/59b8855056b61b0001c8eaa8/5db072d25424c311d46a7717_hideaway%20-%20lasagna%201.jpg"
)


puts "✅ Done seeding!"
