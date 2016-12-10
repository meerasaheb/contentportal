class SubjectsController < ApplicationController
    before_action :set_subject, only: [:show, :edit, :update, :destroy]
  def index
   @subjects = Subject.all
   @subject = Subject.new
   @topics = Topic.new
  end

  def new
    @subject = Subject.new
    # @subject.topics.build
    end

  def show
     
  end

  def create
     @subject = Subject.new(subject_params)
     byebug
     if @subject.save
      redirect_to subjects_url
    else
      render :new
    end

  end

  def edit
    
       # @subject = Subject.find(params[:id])
    
     # redirect_to subjects_url
  end

  def update
    # @subject = Subject.find(params[:id])
           byebug
      if @subject.update(subject_params)

      redirect_to subjects_url
    else
       render :index
  end
  end

  def destroy
     @subject = Subject.find(params[:id])
     @subject.destroy
     redirect_to subjects_url

  end
  private
   def set_subject
    @subject = Subject.find(params[:id])
    end
  def subject_params
    params.require(:subject).permit(:name)
  end

end
