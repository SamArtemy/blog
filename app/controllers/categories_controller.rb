class CategoriesController < ApplicationController

  def show
    @posts = Post.where(category_id: [@category.subtree_ids]).paginate(page: params[:page], per_page: 10)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end