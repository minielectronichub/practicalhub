class Sem < ApplicationRecord
	belongs_to :branch
	has_many :labs
	has_many :experiments
end
