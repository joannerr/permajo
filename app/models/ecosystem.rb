class Ecosystem < ApplicationRecord
	belongs_to :plantae
	has_many :sols
end
