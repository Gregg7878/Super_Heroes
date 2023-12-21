class HeroPowersController < ApplicationController
    before_action :set_hero_power, only: [:show, :update, :destroy]
  
    # GET /hero_powers
    def index
      hero_powers = HeroPower.all
      render json: hero_powers
    end
  
    # GET /hero_powers/:id
    def show
      render json: hero_power
    end
  
    # POST /hero_powers
    def create
      hero_power = HeroPower.new(hero_power_params)
  
      if hero_power.save
        render json: hero_power, status: :created
      else
        render json: hero_power.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /hero_powers/:id
    def update
      if hero_power.update(hero_power_params)
        render json: hero_power
      else
        render json: hero_power.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /hero_powers/:id
    def destroy
      hero_power.destroy
      head :no_content
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_power
      hero_power = HeroPower.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def hero_power_params
      params.require(:hero_power).permit(:strength, :hero_id, :power_id)
    end
  end