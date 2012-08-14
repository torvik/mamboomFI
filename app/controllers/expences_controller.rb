class ExpencesController < ApplicationController
before_filter :signed_in_user

  def create
    @expence = current_user.expences.build(params[:expence])
    if @expence.save
      flash[:success] = "Expence created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

end