class ListsController < ApplicationController
    def index 
        lists = List.all
        render json: lists, only: [:id, :name], include: [:items]    
    end 

    def create
        list = List.create(list_params)
        render json: list, only: [:id, :name], include: [:items]    
        # byebug
    end

    private

    def list_params
        params.require(:list).permit(:name)
    end

end
