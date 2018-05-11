class Branch < ApplicationRecord
    has_many :experiments
    has_many :labs
end
