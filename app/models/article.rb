class Article < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: :author_id
  validates :title, presence: true
  validates :text, presence: true
end
