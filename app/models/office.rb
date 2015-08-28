class Office < ActiveRecord::Base
  belongs_to :district
  has_many :candidates
end
