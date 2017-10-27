class Notification < ApplicationRecord
    validates_presence_of :phone, :body, :source_app
    validates_numericality_of :phone
    validates :phone, length: { is: 9 }
    validates :body, length: { maximum: 160 }
    
end
