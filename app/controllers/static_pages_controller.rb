class StaticPagesController < ApplicationController
  def home
  	@expence = current_user.expences.build if signed_in?
  end

  def about
  end
end
