class Contact < ApplicationRecord
  validates :email, :subject, :body, presence: true
end
