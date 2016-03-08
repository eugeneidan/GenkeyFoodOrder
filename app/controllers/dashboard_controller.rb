class DashboardController < ApplicationController

	before_action :authenticate_user!, except: ['welcome']

  def admin
    @menus = Menu.all.order("created_at DESC")
  end

  def normal
    @menus = Menu.all.order("created_at DESC")
  end

  def welcome

  end
end
