class TeamMember < ApplicationRecord
  belongs_to :manager, foreign_key: :managers_id
  has_many :places, foreign_key: :team_members_id
  validates :name, presence: true, length: {minimum: 3, maximum: 12}
  validates :email, presence: true
  validates :password, presence: true, length: {minimum: 3, maximum: 12}

  def login

  end
end
