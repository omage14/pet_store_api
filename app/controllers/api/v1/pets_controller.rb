module Api 
  module V1
    class PetsController < ApplicationController
      def index 
        pets = Pet.order('created_at Desc');
        render json: {status: 'success' , message: 'Loaded pets', data: pets} , status: :ok
      end

      def show 
        pet = Pet.find(params[:id])
        render json: {status: 'success' , message: 'Loaded pets', data: pet} , status: :ok
      end

      def create 
        pet = pet.new(pet_params)

        if pet.save 
          render json: {status: 'success' , message: 'Saved pet', data: pet} , status: :ok
        else
          render json: {status: 'Error' , message: 'Pet not saved', data: pet.errors} , status: :unprocessable_entity
        end
      end

      def destroy 
        pet = Pet.find(params[:id])
        article.destroy 
        render json: {status: 'success' , message: 'Delete pet', data: pet} , status: :ok
      end

      def update 
        pet = Pet.find(params[:id])
        
        if pet.update_attribute(pet_params)
          render json: {status: 'success' , message: 'update  pets', data: pet} , status: :ok
        else
          render json: {status: 'Error' , message: 'Pet not saved', data: pet.errors} , status: :unprocessable_entity
        end
      end

      private 
      def pet_params 
        params.permit(:name, :breed, :age)
      end

    end
  end
end