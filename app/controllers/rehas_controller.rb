class RehasController < ApplicationController

  def new
    @reha = Reha.new
  end

  def create
    @reha = Reha.new(reha_params)
    if @reha.save
      redirect_to @reha, notice: '記事が正常に投稿されました。'
    else
      render :new
    end
  end

  private

  def reha_params
    params.require(:reha).permit(
      :category,
      :disease,
      :complication,
      :personality,
      :rehabilitation,
      :evidence_id,
      :keyword
    )
  end
end

end
