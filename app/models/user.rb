class User < ApplicationRecord

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, 	presence: true,
						length:   { maximum:  50, minimum: 4 },
						uniqueness: true
						
	validates :email, 	presence: true,
						length:   { maximum:  50, minimum: 8 },
						format:   { with: email_regex }
end
