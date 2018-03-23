#eau copied from previous version
class Rdvm < ApplicationRecord
  belongs_to :vet
  has_and_belongs_to_many :pets
  # has_and_belongs_to_many :clients
end
#
#
# belongs_to :vet
# has_many :pets
# has_many :clients, through: :pets
