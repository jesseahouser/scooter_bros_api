class BrosController < ApplicationController

  before_action :find_bro, only: [:show, :update, :destroy]

  def index # GET /bros
    @bros = Bro.all
    render json: @bros, include: :scooters
  end

  def show # GET /bros/:id
    # byebug # instead of binding.pry
    render json: @bro, include: :scooters
  end

  def create # POST /bros
    # byebug
    @new_bro = Bro.create bros_params
    render json: @new_bro
  end

  def update # PATCH or PUT /bros/:id
    # byebug
    @bro.update bros_params
    render json: @bro
  end

  def destroy # DELETE /bros/:id
    @bro.destroy
    render json: { message: 'Success' }, status: :no_content
  end

  def over_age # Custom route
    # @bros = Bros.where 
  end

  private # PRIVATE

  def find_bro # Private method to find a bro based on its id
    @bro = Bro.find params[:id]
  end

  def bros_params # Strong params
    
    # Weak
    # { name: params[:name], age: params[:age] } # Weak

    # Only permits name and age
    # params.permit :name, :age

    # Only permits name and age && Requires params to be inside a bro object
    # params.require(:bro).permit :name, :age 

    # Only permits name and age && Requires params to be inside a bro object && Default name is Chad
    params.require(:bro).permit(:name, :age).merge(name: 'Chad')
  
  end

end
