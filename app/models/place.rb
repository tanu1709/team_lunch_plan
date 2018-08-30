class Place < ApplicationRecord
  belongs_to :team_member, foreign_key: :team_members_id
end
