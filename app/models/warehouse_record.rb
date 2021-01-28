class WarehouseRecord < ApplicationRecord
  belongs_to :suppliers
  belongs_to :products
  
end
