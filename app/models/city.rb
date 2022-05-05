class City < ApplicationRecord
   has_many :strolls
   has_many :dogs, through: :strolls
   has_many :dog_sitters, through: :strolls
end
