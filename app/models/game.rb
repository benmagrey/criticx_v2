class Game < ApplicationRecord
  validates :name, :price, presence: true
  validates :genre, presence: true, inclusion: { in: %w("Simulator", "Adventure", "Strategy", "Role-playing (RPG)", "Shooter", "Fighting", "Sport")}
  validates :price, numericality: { :greater_than => 0 }
end