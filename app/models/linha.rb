class Linha < ApplicationRecord
  belongs_to :tipo
  has_and_belongs_to_many :terminals, -> { distinct }
  validates :nome, :codigo, :tipo, :presence => true
  validates :codigo, length: {is:3}
end
