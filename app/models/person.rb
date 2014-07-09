class Person < ActiveRecord::Base
  validates :name, presence: true

  has_and_belongs_to_many :communities

  before_destroy { communities.clear }
end
