class Subjects::SubjecttopicsController < ApplicationController
  before_action :set_subjecttopic, only: [:show, :edit,:update,:destroy]
  before_action :set_subject, only: [:create,:new,:show, :edit,:update,:destroy]
 

  def new
    @subjecttopic = Subjecttopic.new
  end

  def create
      @subjecttopic = Subjecttopic.new(subjecttopic_params)
      @subjecttopic.subject_id = @subject.id

        if @subjecttopic.save
          redirect_to subject_url(@subjecttopic.subject_id)
        else
          render :new
        end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
 
  def set_subject 
    @subject = Subject.find(params[:subject_id])
  end 
   def set_subjecttopic
     @subjecttopic = Subjecttopic.find(params[:id])
  end
  def  subjecttopic_params
     params.require(:subjecttopic).permit(:literature,:leteracy,:grammar,:subject_id)
  end

end
