class Product < ApplicationRecord
  validates_presence_of :type_id, :arkonor, :bistot, :crokite, :dark_ochre, :gniess, :spodumain
  validates_uniqueness_of :type_id
end
