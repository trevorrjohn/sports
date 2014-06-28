class Athlete < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :espn_id, presence: true, uniqueness: true
end
