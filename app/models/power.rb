class Power < ApplicationRecord
    has_many :hero, through: :hero_power

    validates :description, presence: true
    validates :description, length: {minimum: 20}
end
