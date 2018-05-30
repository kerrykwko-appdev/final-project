class LikesController < ApplicationController
  def index
    @likes = Like.all

    render("like_templates/index.html.erb")
  end

  def show
    @like = Like.find(params.fetch("id_to_display"))

    render("like_templates/show.html.erb")
  end

  def new_form
    render("like_templates/new_form.html.erb")
  end

  def create_row
    @like = Like.new

    @like.product_id = params.fetch("product_id")
    @like.user_id = params.fetch("user_id")

    if @like.valid?
      @like.save

      redirect_to("/photos", :notice => "Like created successfully.")
    else
      render("like_templates/new_form.html.erb")
    end
  end

  def edit_form
    @like = Like.find(params.fetch("prefill_with_id"))

    render("like_templates/edit_form.html.erb")
  end

  def update_row
    @like = Like.find(params.fetch("id_to_modify"))

    @like.product_id = params.fetch("product_id")
    @like.user_id = params.fetch("user_id")

    if @like.valid?
      @like.save

      redirect_to("/likes/#{@like.id}", :notice => "Like updated successfully.")
    else
      render("/photos.html.erb")
    end
  end

  def destroy_row
    @like = Like.find(params.fetch("id_to_remove"))

    @like.destroy

    redirect_to("/photos", :notice => "Like deleted successfully.")
  end
end
