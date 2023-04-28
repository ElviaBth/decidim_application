class Contact < ApplicationRecord
    #validations
    validates :name, :email, :subject, :message, presence: true
    validates :message, length: { minimum: 10, maximum: 250 }
end
