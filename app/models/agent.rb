class Agent < ApplicationRecord
  validates :id, uniqueness: true
  validates :name, :id, :avatar_url, presence: true
end
