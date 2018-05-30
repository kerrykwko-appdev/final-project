class SkintonesController < ApplicationController
  def index
    @skintones = Skintone.all

    render("skintone_templates/index.html.erb")
  end

  def show
    @skintone = Skintone.find(params.fetch("id_to_display"))

    render("skintone_templates/show.html.erb")
  end

  def new_form
    render("skintone_templates/new_form.html.erb")
  end

  def create_row
    @skintone = Skintone.new

    @skintone.color = params.fetch("color")

    if @skintone.valid?
      @skintone.save

      redirect_to("/skintones", :notice => "Skintone created successfully.")
    else
      render("skintone_templates/new_form.html.erb")
    end
  end

  def edit_form
    @skintone = Skintone.find(params.fetch("prefill_with_id"))

    render("skintone_templates/edit_form.html.erb")
  end

  def update_row
    @skintone = Skintone.find(params.fetch("id_to_modify"))

    @skintone.color = params.fetch("color")

    if @skintone.valid?
      @skintone.save

      redirect_to("/skintones/#{@skintone.id}", :notice => "Skintone updated successfully.")
    else
      render("skintone_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @skintone = Skintone.find(params.fetch("id_to_remove"))

    @skintone.destroy

    redirect_to("/skintones", :notice => "Skintone deleted successfully.")
  end
end
