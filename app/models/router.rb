class Router < ActiveRecord::Base
  attr_accessible :mac
  has_and_belongs_to_many :plugins
end
