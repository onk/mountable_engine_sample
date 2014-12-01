module MyEngine
  class Article < ActiveRecord::Base
    belongs_to :user
  end
end
