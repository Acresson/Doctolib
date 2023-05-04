class Specialty < ApplicationRecord
  has_many :doctors, through: :medecine
end
