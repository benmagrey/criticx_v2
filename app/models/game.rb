class Game < ApplicationRecord
  validates :name, :price, presence: true
  validates :genre, presence: true, inclusion: { in: ["Simulator", "Adventure", "Strategy", "Role-playing (RPG)", "Shooter", "Fighting", "Sport", "Racing"]}
  validates :price, numericality: { :greater_than => 0 }
end