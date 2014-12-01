module MyEngine
  class User < ActiveRecord::Base
    has_many :articles
  end
end
