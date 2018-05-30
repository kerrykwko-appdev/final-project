class UsersController < ApplicationController
  def index
    @users = User.all

    render("user_templates/index.html.erb")
  end

  def show
    @user= User.find(params.fetch("id_to_display"))

    render("user_templates/show.html.erb")
  end
  def wishlist
    render("user_templates/wishlist.html.erb")
  end
  def skintone
    render("user_templates/skintone.html.erb")
  end
  
  
end
