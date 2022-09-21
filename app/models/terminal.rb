class Terminal < ApplicationRecord
  belongs_to :endereco, :dependent => :destroy
  validates :nome, :presence => true
end
