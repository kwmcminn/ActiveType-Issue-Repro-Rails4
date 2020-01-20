class Kitten < ActiveRecord::Base
  belongs_to :cat
  validates :name, presence: true
end
