class Customer < ApplicationRecord
  has_many :addresses, as: :addressable
end
