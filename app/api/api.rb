class API < Grape::API
  prefix 'api'
  format :json

  resource :products do
    get do
      Product.select('id, name, price, category_id')
    end
  end

  resource :users do
    params do
      requires :name, type: String
      requires :link, type: String
    end

    post do
      User.create(name: params[:name], fb_link: params[:link])
    end
  end
end