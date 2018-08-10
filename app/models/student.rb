class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def change_status
    if self.active
      self.update(active: false)
    else
      self.update(active: true)
    end
  end
end
