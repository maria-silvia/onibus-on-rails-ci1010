class Tipo < ApplicationRecord
    has_many :linhas, :dependent => :destroy
end
