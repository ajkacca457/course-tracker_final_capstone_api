class User < ApplicationRecord
has_many :courses

validates :name, presence:true
validates :username, presence:true
validates :password, presence:true
validates :email, presence:true
end
