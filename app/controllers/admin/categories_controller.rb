class Admin::CategoriesController < ApplicationController
  layout "admin"

  def index
    if params[:q]
      @categories = Category.find_by_name(params[:q])
        .page(params[:page]).per Settings.category.perpage
      if params[:page] == Settings.index_page
        render partial: "list", locals: {categories: @categories}
      end
    else
      @category = Category.new
      @categories = Category.page(params[:page]).per Settings.category.perpage
    end
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
