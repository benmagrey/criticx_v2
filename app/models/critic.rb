class Critic < ApplicationRecord
  belongs_to :games
  validates :username, presence: true, length: { in: 2..12}, format: { with: /\A[a-zA-Z]+\z/ }
  validates :body, :title, presence: { message: "Please write something!"}
end
