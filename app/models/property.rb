class Property < ApplicationRecord
    
    #Relaciones
    has_one :commune_id
    belongs_to :user
    #validaciones
    validates :commune_id, presence: true
end
