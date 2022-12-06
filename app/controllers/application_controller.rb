class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json(include: :foods)
  end

  post "/restaurants" do
    restaurant = Restaurant.create(
      name: params[:name],
      city: params[:city],
      state: params[:state],
      food_type: params[:food_type],
      phone_number: params[:phone_number],
      website: params[:website],
      online_ordering: params[:online_ordering],
      image: params[:image]
    )

    restaurant.to_json()
  end

  # patch "/restaurants/:id" do
  #   restaurant= Restaurant.find(params[:id])
  #   restaurant.update(
  #     food_type: params[:food_type],
  #     website: params[:website],
  #     online_ordering: params[:online_ordering]
  #   )
  #   restaurant.to_json
  # end

  get "/foods" do
    foods = Food.all
    foods.to_json(include: :restaurant)
  end

  post "/foods" do
    food = Food.create(
      food_name: params[:food_name],
      restaurant_id: params[:restaurant_id],
      price: params[:price],
      description: params[:description],
      image: params[:image]
    )

    food.to_json
  end

  patch "/foods/:id" do 
    food = Food.find(params[:id])

    food.update(
      price: params[:price]
    )
    food.to_json
  end

  delete "/foods/:id" do
    food = Food.find(params[:id])
    food.destroy
    food.to_json
  end

  get "/last_five_foods_submitted" do 
    last_foods = Food.order(created_at: :desc).first(5)
    last_foods.to_json(:include => { :restaurant => {:only => :name}})
  end

end
