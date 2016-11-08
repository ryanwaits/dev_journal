class Task < ApplicationRecord
  has_many :parts

  def parts_completed?
    self.parts.where(done: false).empty?
  end

  def complete?
    self.done == true
  end
  
  def self.complete
    self.where(done: true)
  end
  
  def self.in_progress
    self.where(in_progress: true)
  end

  def self.most_recent
    self.where(done: false).order('updated_at DESC')
  end

  def self.latest
    self.where(done: false).order('updated_at DESC').limit(3)
  end

  def self.by_level
    self.where(done: false).order('level ASC')
  end

end
