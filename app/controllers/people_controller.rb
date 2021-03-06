class PeopleController < ApplicationController
  before_filter :fetch_pending, only: [:edit, :update, :destroy]

  def index
    @selected = :home
    @people = Person.approved.non_line_cutters.order(created_at: :desc)
  end

  def new
    @selected = :share
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:notice] = 'Your file has been submitted and is awaiting approval.'
      redirect_to people_path
    else
      @selected = :share
      flash[:error] = 'Something went wrong.  Please try again.'
      render :new
    end
  end

  def edit
    redirect_to root_path unless params[:admin] == ENV['ADMIN_KEY']
  end

  def update
    person = Person.find(params[:id])
    person.approve
    render :edit
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    render :edit
  end

  def wall_of_shame
    @selected = :shame
    @people = Person.approved.line_cutters.order(created_at: :desc)
  end

  private

  def person_params
    params.require(:person).permit(:photo_cred, :caption, :photo, :line_cutter)
  end

  def fetch_pending
    @people = Person.pending
  end

end
