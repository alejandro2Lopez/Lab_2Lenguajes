class Contract < ApplicationRecord
  has_many :comedians, through: :record
end
