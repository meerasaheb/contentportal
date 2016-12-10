class TopicsController < ApplicationController
   before_action :set_comment, only: [:show, :edit, :update, :destroy]
  def new
     @topic = Topic.new
  end

  def index
   @topics = Topic.all
    @topic = Topic.new
  end

  def show
       # @topic = Topic.find(params[:id])
    # @topic = @subject.build_topics
  end

  def create
    
    @topic = Topic.new(topic_params)
      # byebug
     if @topic.save
      redirect_to subjects_url
    else
       # redirect_to subjects_url
       render :new
    end
  end

  def edit
  end

  def update
    # @topic = Topic.find(params[:id])
    byebug
      if @topic.update(topic_params)
      redirect_to subjects_url
    else
       render :index
  end
  end

  def destroy
     @topic = Topic.find(params[:id])
     @topic.destroy
     redirect_to subjects_url
  end
 
  private

  def set_comment
    @topic = Topic.find(params[:id])
    end
  def topic_params
     params.require(:topic).permit(:name,:subject_id)
  end
end
