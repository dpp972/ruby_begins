class Service < ApplicationRecord
    has_many :pings, dependent: :destroy
end
