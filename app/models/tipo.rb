class Tipo < ApplicationRecord
    has_many :linhas, :dependent => :destroy
    validates :nome, :cor, :presence => true
end
