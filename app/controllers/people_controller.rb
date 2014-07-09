class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      flash[:notice] = "Person #{@person.name} created successfully."
      redirect_to @person
    else
      flash[:error] = "There is some problem while creating Person."
      render 'new'
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      flash[:notice] = "Person updated successfully."
      redirect_to @person
    else
      flash[:error] = "There is some problem while creating Person."
      render 'edit'
    end
  end

  def destroy
  end

private

  def person_params
    params.require(:person).permit(:name, :email, {:community_ids => []})
  end
end
