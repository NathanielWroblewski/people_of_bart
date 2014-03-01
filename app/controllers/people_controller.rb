class PeopleController < ApplicationController

  def index
    @selected = :home
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:notice] = 'Your file has been submitted and is awaiting approval.'
      redirect_to people_path
    else
      flash[:error] = 'Something went wrong.  Please try again.'
      render :new
    end
  end

  private

  def person_params
    params.require(:person).permit(:photo_cred, :caption, :photo)
  end

end
