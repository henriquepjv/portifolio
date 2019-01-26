class Contact
  include ActiveModel::Model

  attr_accessor(:email, :subject, :body)

  validates :email, :subject, :body, presence: true
end
