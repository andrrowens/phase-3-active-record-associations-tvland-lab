class Character < ActiveRecord::Base
  belongs_to :actor # 7 methods
  belongs_to :show

  def full_name
    self.first_name + " " + self.last_name
  end

  def say_that_thing_you_say
    "#{self.full_name} always says: #{self.catchphrase}"
  end

end