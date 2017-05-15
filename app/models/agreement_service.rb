class AgreementService < ApplicationRecord
  belongs_to :agreement
  belongs_to :service
end
