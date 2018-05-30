class ProductsController < ApplicationController
  def index
    @products = Product.all

    render("product_templates/index.html.erb")
  end

  def show
    @product = Product.find(params.fetch("id_to_display"))

    render("product_templates/show.html.erb")
  end

  def new_form
    render("product_templates/new_form.html.erb")
  end

  def create_row
    @product = Product.new

    @product.brand = params.fetch("brand")
    @product.item = params.fetch("item")
    @product.shade = params.fetch("shade")

    if @product.valid?
      @product.save

      redirect_to("/products", :notice => "Product created successfully.")
    else
      render("product_templates/new_form.html.erb")
    end
  end

  def edit_form
    @product = Product.find(params.fetch("prefill_with_id"))

    render("product_templates/edit_form.html.erb")
  end

  def update_row
    @product = Product.find(params.fetch("id_to_modify"))

    @product.brand = params.fetch("brand")
    @product.item = params.fetch("item")
    @product.shade = params.fetch("shade")

    if @product.valid?
      @product.save

      redirect_to("/products/#{@product.id}", :notice => "Product updated successfully.")
    else
      render("product_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @product = Product.find(params.fetch("id_to_remove"))

    @product.destroy

    redirect_to("/products", :notice => "Product deleted successfully.")
  end
end
