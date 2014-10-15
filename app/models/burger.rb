class Burger < ActiveRecord::Base
  validates_inclusion_of :bun, in: ["wheat", "potato", "lettuce"]


  def ketchup?
    self.ketchup
  end

  def as_json(options={})
    # this is all comes from Active Record
    super(:only => [:id, :bun, :wellness]) # gives us only these items
    # super(:except => [:id, :bun, :wellness]) # gives every item except these items
  end

  
end
