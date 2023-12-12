class RehasController < ApplicationController

  def index
    @rehas = Reha.all
  end

  def new
    @reha = Reha.new
  end

  def create
    @reha = Reha.new(reha_params)
    if @reha.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    @rehas = Reha.search(params[:query])
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def reha_params
    params.require(:reha).permit(
      :title,
      :category_id,
      :disease,
      :complication,
      :personality,
      :rehabilitation,
      :evidence_id,
      :keyword
    ).merge(user_id: current_user.id)
  end
end
