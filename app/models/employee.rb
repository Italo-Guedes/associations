class Employee < ApplicationRecord
  has_many :addresses, as: :addressable
end
