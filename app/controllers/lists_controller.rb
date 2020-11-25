class ListsController < ApplicationController
    def index 
        list = List.all
        render json: list, only: [:name], include: [:items] 
    end 
end
