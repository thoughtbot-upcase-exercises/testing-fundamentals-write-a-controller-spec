class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_attributes)
    if @person.save
      redirect_to @person, notice: "Person created."
    else
      render :new
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  private

  def person_attributes
    params.require(:person).permit(:first_name)
  end
end
