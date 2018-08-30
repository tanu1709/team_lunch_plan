class Manager < ApplicationRecord
  has_many :team_members, foreign_key: :managers_id
  validates :name, presence: true, length: {minimum: 3, maximum: 128}
end
