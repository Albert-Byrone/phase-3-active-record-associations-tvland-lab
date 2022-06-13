class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  def actors_list
    self.show.actors.map do |actor|
      actor.full_name
    end
  end
end