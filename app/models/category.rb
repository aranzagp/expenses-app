class Category < ApplicationRecord
	before_save { self.name = name.downcase }
	validates :name, presence: true, uniqueness: {case_sensitive: false} # infers uniqueness=true 
end
