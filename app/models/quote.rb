class Quote < ApplicationRecord
  validates :body, presence: true
  self.per_page = 12
end
