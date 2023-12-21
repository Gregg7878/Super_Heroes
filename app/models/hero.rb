class Hero < ApplicationRecord
    has_many :power, through: :hero_power
end
