class Supplier < ApplicationRecord
    has_many :produts
    has_many :warehouse_records
end
