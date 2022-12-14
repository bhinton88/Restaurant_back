class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json(include: :dishes)
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

  get "/dishes" do
    dishes = Dish.all
    dishes.to_json(include: :restaurant)
  end

  post "/dishes" do
    dish = Dish.create(
      dish_name: params[:dish_name],
      restaurant_id: params[:restaurant_id],
      price: params[:price],
      description: params[:description],
      image: params[:image]
    )

    dish.to_json
  end

  # patch "/dishes/:id" do 
  #   dish = Dish.find(params[:id])

  #   dish.update(
  #     price: params[:price]
  #   )
  #   dish.to_json
  # end

  # delete "/dishes/:id" do
  #   dish = Dish.find(params[:id])
  #   dish.destroy
  #   dish.to_json
  # end

  get "/last_five_dishes_submitted" do 
    last_dishes = Dish.order(created_at: :desc).first(5)
    last_dishes.to_json(:include => { :restaurant => {:only => :name}})
  end

end
