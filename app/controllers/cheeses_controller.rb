class CheesesController < ApplicationController
    def index
        cheeses=Cheese.all
        render json: cheeses
    end
    
    def order
        cheeses=Cheese.all
        render json: cheeses.order(price: :desc)
    end

    def limit
        cheeses=Cheese.all
        render json: cheeses.limit(1)
    end
end
