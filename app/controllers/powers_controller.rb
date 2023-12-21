class PowersController < ApplicationController 
    def index
    power = Power.all 
    render json: Power.all, status: :ok
end

def show
    power = Power.find_by(id:params[:id])
    if power.valid?
    render json: power, include: :powers
    else 
        render json: {error: "Power not found"}, status: :not_found
    end
end

def create
    power = Power.create(power_params)
    if power.valid?
        render json: power, status: :created
    else
        render json: {error: power.errors.full_messages}, status: :unprocessable_entity
    end
end

def update
    power = Power.find_by(id:params[:id])
    if power
        power.update(power_params)
        render json: power, status: :accepted
    else
        render json: {errors: "Power not found"}, status: :not_found
    end
end

def destroy
    power = Power.find_by(id:params[:id])
    if power
        power.destroy
        head :no_content
    else
        render json: {errors: "Power not found"}, status: :not_found
    end
end
end
