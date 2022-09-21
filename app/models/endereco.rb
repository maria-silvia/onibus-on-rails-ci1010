class Endereco < ApplicationRecord
    has_one :terminal
    validates :rua, :numero, :presence => true
end
