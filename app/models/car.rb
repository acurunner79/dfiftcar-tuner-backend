class Car < ApplicationRecord
  belongs_to :engine
  belongs_to :clutch
  belongs_to :differential
  belongs_to :hand_brake
  belongs_to :rollcage
  belongs_to :suspension
  belongs_to :user
end
