class HeroesController < ApplicationController
    def index
        hero = Hero.all 
        render json: Hero.all, status: :ok
    end

    def show
        hero = Hero.find_by(id: params[:id])
        if hero
            render json: hero, include: :Power
        else 
            render json: { error: "Hero not found" }, status: :not_found
        end
    end
    

    def create
        hero = Hero.create(hero_params)
        if hero.persisted?
            render json: hero, status: :created
        else
            render json: {error: hero.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        hero = Hero.find_by(id:params[:id])
        if hero
            hero.update(hero_params)
            render json: hero, status: :accepted
        else
            render json: {errors: "Hero not found"}, status: :not_found
        end
    end
    
    def destroy
        hero = Hero.find_by(id:params[:id])
        if hero
            hero.destroy
            head :no_content
        else
            render json: {errors: "Hero not found"}, status: :not_found
        end
    end
end

