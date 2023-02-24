class ApplicationController < Sinatra::Base

  # add routes
  get '/bakeries' do
    # "Hello World"
    bakeries = Bakery.all
    bakeries.to_json
  end

  get '/bakeries/:id' do
    bakery = Bakery.find(params[:id])
    bakery.to_json
  end

  get '/baked_goods/by_price' do
    price = BakedGood.all.order(:price)
    price.to_json
  end

  get '/baked_goods/most_expensive' do
   expensive = BakedGood.all.order(:price).limit(1)
   expensive.to_json
  end
  

end
