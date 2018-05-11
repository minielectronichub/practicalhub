class Lab < ApplicationRecord
	has_many :experiments
	belongs_to :sem
	belongs_to :branch
	belongs_to :collage
end
