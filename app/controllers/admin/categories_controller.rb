class Admin::CategoriesController < ApplicationController
  layout "admin"

  def index
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      render plain: t(".success")
    else
      render plain: t(".fail")
    end
  end

  private
  def category_params
    params.require(:category).permit :name, :parent_id
  end
end
