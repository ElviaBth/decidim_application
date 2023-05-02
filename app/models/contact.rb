class Contact < ApplicationRecord
    #validations
    validates :name, :email, :subject, :message, presence: true
    validates :message, :email, length: { minimum: 5, maximum: 250 }

end
