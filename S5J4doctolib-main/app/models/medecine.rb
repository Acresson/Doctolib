class Medecine < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
end
