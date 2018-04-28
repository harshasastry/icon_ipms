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

      @surveys = Survey.where(organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(component: :desc)
      if floor and tower and unit and location and city
        # @queryString = floor + ", " + tower + ", " + unit + ", " + location +", " + city
        @queryString = tower + ", " + unit + ", " + location + ", " + city 
      end

      @organisation = organisation
      #send_file Rails.root.join("public", "IPMS1.png"), type: "image/png", disposition: "inline"
      @IPMS1 = "IPMS1.png"
      @IPMS2 = "IPMS2.png"
      @IPMS3 = "IPMS3.png"

      # binding.pry
      # do the calculation part
      @floors_ipms_1_comp_a = @surveys.where(ipms: 1, component: "Comp A", organisation: organisation, city: city, location: location, unit: unit, tower: tower)
      # init an array
      @floors_n_area_ipms_1 = []
      @floors_ipms_1_comp_a.each do |r|
        @floors_n_area_ipms_1.push(floor: r[:floor], area: r[:area])
      end





      @ipms_1_comp_b = @surveys.where(ipms: 1, component: "Comp B", organisation: organisation, city: city, location: location, unit: unit, tower: tower).pluck(:area).first.to_f
      @ipms_1_total_area = 100
      
 
      @ipms_2_comp_a = @surveys.where(ipms: 2, component: "Comp A").pluck(:area).first.to_f
      @ipms_2_comp_b = @surveys.where(ipms: 2, component: "Comp B").pluck(:area).first.to_f
      @ipms_2_comp_c = @surveys.where(ipms: 2, component: "Comp C").pluck(:area).first.to_f
      @ipms_2_comp_d = @surveys.where(ipms: 2, component: "Comp D").pluck(:area).first.to_f
      @ipms_2_comp_e = @surveys.where(ipms: 2, component: "Comp E").pluck(:area).first.to_f
      @ipms_2_comp_f = @surveys.where(ipms: 2, component: "Comp F").pluck(:area).first.to_f
      @ipms_2_comp_g = @surveys.where(ipms: 2, component: "Comp G").pluck(:area).first.to_f
      @ipms_2_comp_h = @surveys.where(ipms: 2, component: "Comp H").pluck(:area).first.to_f
      @ipms_2_total_area = @ipms_2_comp_a + @ipms_2_comp_b + @ipms_2_comp_c + @ipms_2_comp_d + @ipms_2_comp_e + @ipms_2_comp_f + @ipms_2_comp_g + @ipms_2_comp_h

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
