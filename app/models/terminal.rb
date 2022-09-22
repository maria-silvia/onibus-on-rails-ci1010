class Terminal < ApplicationRecord
  belongs_to :endereco, :dependent => :destroy
  has_and_belongs_to_many :linhas, -> { distinct }

  validates :nome, :presence => true
end
