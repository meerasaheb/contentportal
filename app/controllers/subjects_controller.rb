class SubjectsController < ApplicationController
  def index
   @subjects = Subject.all
   @subject = Subject.new
    @subjecttopic = Subjecttopic.new
  end

  def new
    end

  def show
     @subject = Subject.find(params[:id])
  end

  def create
     @subject = Subject.new(subject_params)
     if @subject.save
      redirect_to subjects_url
    else
      render :new
    end

  end

  def edit
    @subjects = Subject.all
     @subject = Subject.find(params[:id])
  end

  def update
     @subject = Subject.find(params[:id])
     if @subject.update(subject_params)
      redirect_to subjects_url
    # else
    #    render :subjects_url
    
  end
  end

  def destroy
     @subject = Subject.find(params[:id])
     @subject.destroy
     redirect_to subjects_url

  end
  private
  def subject_params
    params.require(:subject).permit(:name)
  end

end
