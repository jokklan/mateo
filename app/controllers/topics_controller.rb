class TopicsController < ApplicationController
  before_filter :find_category

  def show
    @topic = Topic.find(params[:id])
  end

  def draw
    @topic = @category.topics.shuffle.first
    render :show
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  end
end
