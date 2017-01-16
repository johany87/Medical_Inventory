class LaboratoriesController < ApplicationController

  def index
    @laboratories = Laboratory.all
  end #index

  def new
    @laboratory = Laboratory.new
  end #new

  def create
    @laboratory = Laboratory.new(laboratory_params)
    if @laboratory.save
      flash[:success] = "Laboratory created Successfully"
      redirect_to laboratories_path
    else
      render 'new'
    end #if
  end #create

  def destroy
    find_laboratory
    if @laboratory.destroy
        flash[:success] = "Laboratory Destroyed Successfully"
    else
        flash[:error] = "Houston we are in troubles, please try later"
    end if @laboratory.products.any? 
      redirect_to laboratories_path
  end #destroy

  def edit
    find_laboratory
    @laboratories = Laboratory.all
  end #edit

  def update
    find_laboratory
    if @laboratory.update(laboratory_params)
      flash[:success] = "Laboratory updated"
      redirect_to laboratory_path
    else
      flash[:error] = "Laboratory can´t updated"
      render 'new'
    end
  end #update

  def show
    find_laboratory
  end #show


  def find_laboratory
    @laboratory = Laboratory.find_by(id: params[:id])
  end #find_laboratory

  private

  def laboratory_params
    params.require(:laboratory).permit(:name)
  end #laboratory_params


end
