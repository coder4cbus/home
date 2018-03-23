#eau copied from previous version
class Pet < ApplicationRecord
  belongs_to :client
  belongs_to :vet
  has_and_belongs_to_many :rdvms
end
  #
  # belongs_to :client
  # belongs_to :vet
  # has_many :rdvms
