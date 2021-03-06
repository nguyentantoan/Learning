# frozen_string_literal: true

class Admin::CategoriesController < ApplicationController
  def new;end

  def create
    @category = Category.new category_params

    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  # strong params
  private
  
  def category_params
    params.require(:category).permit :name
  end
end
