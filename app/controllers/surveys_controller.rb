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

      # IPMS1
      @ipms_1_floors = 0
      @ipms_1_floors = Floor.where(tower_id: Tower.where(name: tower).pluck(:id)).order(name: :asc).pluck(:name)

      @ipms_1_comp_a_total_area = 0

      @floors_ipms_1_comp_a = @surveys.where(ipms: 1, component: "Comp A", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_1_comp_a = []
      @ipms_1_floors.each do |r|
        @floor_entry = @floors_ipms_1_comp_a.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_1_comp_a.push(floor: r, area: fl[:area])
            @ipms_1_comp_a_total_area = @ipms_1_comp_a_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_1_comp_a.push(floor: r, area: 0)
        end
      end

      @ipms_1_comp_b_total_area = 0

      @floors_ipms_1_comp_b = @surveys.where(ipms: 1, component: "Comp B", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_1_comp_b = []
      @ipms_1_floors.each do |r|
        @floor_entry = @floors_ipms_1_comp_b.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_1_comp_b.push(floor: r, area: fl[:area])
            @ipms_1_comp_b_total_area = @ipms_1_comp_b_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_1_comp_b.push(floor: r, area: 0)
        end
      end

      # IPMS2
      @ipms_2_floors = 0
      @ipms_2_floors = Floor.where(tower_id: Tower.where(name: tower).pluck(:id)).order(name: :asc).pluck(:name)

      @ipms_2_comp_a_total_area = 0

      @floors_ipms_2_comp_a = @surveys.where(ipms: 2, component: "Comp A", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_a = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_a.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_a.push(floor: r, area: fl[:area])
            @ipms_2_comp_a_total_area = @ipms_2_comp_a_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_a.push(floor: r, area: 0)
        end
      end

      @ipms_2_comp_b_total_area = 0

      @floors_ipms_2_comp_b = @surveys.where(ipms: 2, component: "Comp B", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_b = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_b.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_b.push(floor: r, area: fl[:area])
            @ipms_2_comp_b_total_area = @ipms_2_comp_b_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_b.push(floor: r, area: 0)
        end
      end

      @ipms_2_comp_c_total_area = 0
      @floors_ipms_2_comp_c = @surveys.where(ipms: 2, component: "Comp C", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_c = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_c.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_c.push(floor: r, area: fl[:area])
            @ipms_2_comp_c_total_area = @ipms_2_comp_c_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_c.push(floor: r, area: 0)
        end
      end

      @ipms_2_comp_d_total_area = 0

      @floors_ipms_2_comp_d = @surveys.where(ipms: 2, component: "Comp D", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_d = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_d.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_d.push(floor: r, area: fl[:area])
            @ipms_2_comp_d_total_area = @ipms_2_comp_d_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_d.push(floor: r, area: 0)
        end
      end

      @ipms_2_comp_e_total_area = 0
      @floors_ipms_2_comp_e = @surveys.where(ipms: 2, component: "Comp E", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_e = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_e.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_e.push(floor: r, area: fl[:area])
            @ipms_2_comp_e_total_area = @ipms_2_comp_e_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_e.push(floor: r, area: 0)
        end
      end


      @ipms_2_comp_f_total_area = 0

      @floors_ipms_2_comp_f = @surveys.where(ipms: 2, component: "Comp F", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_f = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_f.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_f.push(floor: r, area: fl[:area])
            @ipms_2_comp_f_total_area = @ipms_2_comp_f_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_f.push(floor: r, area: 0)
        end
      end


      @ipms_2_comp_g_total_area = 0
      @floors_ipms_2_comp_g = @surveys.where(ipms: 2, component: "Comp G", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_g = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_g.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_g.push(floor: r, area: fl[:area])
            @ipms_2_comp_g_total_area = @ipms_2_comp_g_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_g.push(floor: r, area: 0)
        end
      end


      @ipms_2_comp_h_total_area = 0

      @floors_ipms_2_comp_h = @surveys.where(ipms: 2, component: "Comp H", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_2_comp_h = []
      @ipms_2_floors.each do |r|
        @floor_entry = @floors_ipms_2_comp_h.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_2_comp_h.push(floor: r, area: fl[:area])
            @ipms_2_comp_h_total_area = @ipms_2_comp_h_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_2_comp_h.push(floor: r, area: 0)
        end
      end
      # IPMS3
      @ipms_3_floors = 0
      @ipms_3_floors = Floor.where(tower_id: Tower.where(name: tower).pluck(:id)).order(name: :asc).pluck(:name)

      @ipms_3_comp_a_total_area = 0

      @floors_ipms_3_comp_a = @surveys.where(ipms: 3, component: "Comp A", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_3_comp_a = []
      @ipms_3_floors.each do |r|
        @floor_entry = @floors_ipms_3_comp_a.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_3_comp_a.push(floor: r, area: fl[:area])
            @ipms_3_comp_a_total_area = @ipms_3_comp_a_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_3_comp_a.push(floor: r, area: 0)
        end
      end

      @ipms_3_comp_b_total_area = 0

      @floors_ipms_3_comp_b = @surveys.where(ipms: 3, component: "Comp B", organisation: organisation, city: city, location: location, unit: unit, tower: tower).order(floor: :asc)
      @floors_n_area_ipms_3_comp_b = []
      @ipms_3_floors.each do |r|
        @floor_entry = @floors_ipms_3_comp_b.where(floor: r)
        if (@floor_entry.count > 0)
          @floor_entry.each do |fl|
            @floors_n_area_ipms_3_comp_b.push(floor: r, area: fl[:area])
            @ipms_3_comp_b_total_area = @ipms_3_comp_b_total_area + fl[:area]
          end
        else
          @floors_n_area_ipms_3_comp_b.push(floor: r, area: 0)
        end
      end
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
