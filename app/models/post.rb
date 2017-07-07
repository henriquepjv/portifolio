class Post < ApplicationRecord
  scope :ordered_by_id, -> { order(id: :asc)  }

  validates_presence_of :title, :description, :body
end
