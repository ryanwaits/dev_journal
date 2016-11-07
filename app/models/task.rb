class Task < ApplicationRecord
  has_many :parts
  
  def self.complete
    Task.where(done: true)
  end
  
  def self.in_progress
    Task.where(in_progress: true)
  end
end
