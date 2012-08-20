class QuestionnairesController < ApplicationController
  before_filter :signed_in_user
 
  def index
  end
  
  def new
    @questionnaire = Questionnaire.new
  end
  
  def create
    @questionnaire = Questionnaire.new(params[:questionnaire])
   
    # On a successful save, flash success and redirect to the new questionnaire's page
    if @questionnaire.save
      flash[:success] = "Questionnaire successfully created"
      redirect_to @questionnaire
    
    # On an unsuccessful save, re-render the current page
    else
      render 'new'
    end
  end

  def destroy
  end
  
  def show
    @questionnaire = Questionnaire.find(params[:id])
  end
  
  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
end