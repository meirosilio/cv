class ExperiencesController < ApplicationController

  before_action :set_experince, only: [:edit,:update,:destroy]

  def index
    @experiences = Experience.paginate(page: params[:page], per_page:6)
  end

  def new
    @experince = Experience.new
  end

  def create
    @experince = Experience.create(experience_params)
    if @experince.save
      redirect_to experiences_path, notice: "You create a new experince"
    else

      redirect_to new_experience_path
    end
  end

  def edit
  end

  def update
    if @experince.update(experience_params)
      redirect_to experiences_path, notice: "You Update Experince #{@experince.id} successfully"
    else
      redirect_to edit_experience_path
    end
  end

  def destroy
    if @experince.destroy
      redirect_to experiences_path, notice: "Experince deleted successfully"
    else
      redirect_to experiences_path, danger: "Experince has not been deleted"
    end
  end

  private
  def set_experince
    @experince = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:name,:position,:start_date,:end_date,:description,:user_id ,:category_id)
  end

end
