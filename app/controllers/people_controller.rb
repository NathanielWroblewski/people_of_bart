class PeopleController < ApplicationController

  def index
    @selected = :home
    @people = Person.all
  end

end
