class Agreement < ApplicationRecord
  belongs_to :renter
  belongs_to :employee
end
