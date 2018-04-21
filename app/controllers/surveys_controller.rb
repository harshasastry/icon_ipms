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
    @orgPlan = 'WIPRO-EC-CAMPUS.png'
  end

  def searchResults
    if params[:city]
      organisation = params[:organisation]
      city = params[:city]
      location = params[:location]
      unit = params[:unit]
      tower = params[:tower]
      floor = params[:floor]

      @surveys = Survey.where(organisation: organisation, city: city, location: location, unit: unit, tower: tower, floor: 1).order(ipms: :desc)
      if floor and tower and unit and location and city
        @queryString = floor + ", " + tower + ", " + unit + ", " + location +", " + city
      end

      @organisation = organisation
      #send_file Rails.root.join("public", "IPMS1.png"), type: "image/png", disposition: "inline"
      @IPMS1 = "IPMS1.png"
      @IPMS2 = "IPMS2.png"
      @IPMS3 = "IPMS3.png"

      # do the calculation part
      @ipms_1_comp_a = @surveys.where(ipms: 1, component: "Comp A").pluck(:area).first.to_f
      @ipms_1_comp_b = @surveys.where(ipms: 1, component: "Comp B").pluck(:area).first.to_f
      @ipms_1_total_area = @ipms_1_comp_a + @ipms_1_comp_b

      @ipms_2_comp_a = @surveys.where(ipms: 2, component: "Comp A").pluck(:area).first.to_f
      @ipms_2_comp_b = @surveys.where(ipms: 2, component: "Comp B").pluck(:area).first.to_f
      @ipms_2_total_area = @ipms_2_comp_a + @ipms_2_comp_b

      @ipms_3_comp_a = @surveys.where(ipms: 3, component: "Comp A").pluck(:area).first.to_f
      @ipms_3_comp_b = @surveys.where(ipms: 3, component: "Comp B").pluck(:area).first.to_f
      @ipms_3_total_area = @ipms_3_comp_a + @ipms_3_comp_b

    else
      render 'search'
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
    params.require(:survey).permit(:organisation, :city, :location, :unit, :tower, :floor, :area, :building_type, :component, :ipms)
  end
end
