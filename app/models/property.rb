class Property < ApplicationRecord
    
    #Relaciones
    belongs_to :commune
    belongs_to :user
    has_one_attached :main_image
    has_many_attached :prop_images
    #validaciones
    validates :commune_id, presence: true

    enum :property_type => {'Casa' => 0, 'Departamento' => 1,'Oficina' => 2, 'Terreno' => 3}
    enum :business_type => {'Arriendo' => 0, 'Venta' => 1}
    enum :price_type => {'UF' => 0, 'CLP' => 1}
    
end
