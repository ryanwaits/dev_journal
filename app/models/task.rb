class Task < ApplicationRecord
  has_many :parts
  
  def self.complete
    self.where(done: true)
  end
  
  def self.in_progress
    self.where(in_progress: true)
  end

  def self.latest
    self.order('updated_at DESC').limit(3)
  end

  def self.by_level
    self.order('level ASC')
  end

end
