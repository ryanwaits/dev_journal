class Part < ApplicationRecord
  belongs_to :task

  def self.incomplete
    self.where(done: false)
  end

end
