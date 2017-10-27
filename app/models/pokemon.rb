class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates_presence_of :name
  validates_uniqueness_of :name
end
