class Kitten < ActiveRecord::Base
  belongs_to :dog
  validates :name, presence: true
end
