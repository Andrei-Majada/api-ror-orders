class Order < ApplicationRecord
    validates :control_number, presence: true
    validates :state, presence: true
end
