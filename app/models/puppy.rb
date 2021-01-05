class Puppy < ApplicationRecord
  belongs_to :user
  has_many :cues
end
