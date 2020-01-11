class Skill < ApplicationRecord
  validate_presence_of :title :precent_utilized
end
