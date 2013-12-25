class Entry < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_numericality_of :category_id

  belongs_to :category
end
