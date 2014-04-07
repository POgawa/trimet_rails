class Stop < ActiveRecord::Base
  validates :station_id, :presence => true
  validates :line_id, :presence => true
  belongs_to :station
  belongs_to :line
end
