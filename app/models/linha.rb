class Linha < ApplicationRecord
  belongs_to :tipo
  validates :nome, :codigo, :tipo, :presence => true
end
