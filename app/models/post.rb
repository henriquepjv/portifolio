class Post < ApplicationRecord
  scope :ordered_by_id, -> { order(id: :asc)  }
end
