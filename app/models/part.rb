class Part < ApplicationRecord
  validates_presence_of :description, :estimate
  
  belongs_to :task

  def self.incomplete
    self.where(done: false)
  end

end
