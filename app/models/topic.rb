class Topic < ApplicationRecord
  belongs_to :subject,:autosave => true
  validates_presence_of :name
end
