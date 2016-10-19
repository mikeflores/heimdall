class Project < ApplicationRecord
  has_many :assignments
  has_many :workers, through: :assignments
end