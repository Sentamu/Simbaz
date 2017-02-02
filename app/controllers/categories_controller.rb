class CategoriesController < ApplicationController
  #before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @title = @category.name
    @listings = @category.listings.order("created_at DESC")

  

  
end
end

