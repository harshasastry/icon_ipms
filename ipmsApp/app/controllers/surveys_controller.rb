class SurveysController < ApplicationController
  def new
    #This shows the new Survey page to enter data to create a new record.
    @survey = Survey.new
  end

  def create
    #render plain: params[:survey].inspect
    @survey = Survey.new(survey_params)
    @survey.save
    redirect_to @survey
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])
    if @survey.update(survey_params)
      redirect_to @survey
    else
      render 'edit'
  end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def search
  end

  def searchResults
      if params[:city]
        city = params[:city]
  	  	office = params[:office]
  	  	building = params[:building]
        organisation = "Wipro"

        building = building.split(",").first
      	floor = 1
      	@surveys = Survey.where(organisation: organisation, city: city, office: office, building: building, floor: 1)
        @queryString = city + ", " + office + ", " + building
        @organisation = organisation
        #send_file Rails.root.join("public", "IPMS1.png"), type: "image/png", disposition: "inline"
        @IPMS1 = "IPMS1.png"
        @IPMS2 = "IPMS2.png"
        @IPMS3 = "IPMS3.png"
      end
  end

  def index
    @surveys = Survey.all
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    redirect_to surveys_path
  end

  private
    def survey_params
      params.require(:survey).permit(:organisation, :city, :office, :building, :floor, :area, :building_type, :component, :ipms)
    end
end
