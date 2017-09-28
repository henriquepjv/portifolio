class Post < ApplicationRecord
  scope :ordered_by_id, -> { order(id: :asc)  }
  scope :only_published, -> { where(published: true) }

  validates_presence_of :title, :description, :body
end
