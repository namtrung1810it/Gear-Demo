class Gear < ApplicationRecord
    belongs_to :brand
    belongs_to :type
    has_and_belongs_to_many :orders
end
