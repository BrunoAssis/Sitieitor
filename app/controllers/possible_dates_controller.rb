class PossibleDatesController < ApplicationController
  # GET /possible_dates
  # GET /possible_dates.json
  def index
    @possible_dates = PossibleDate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @possible_dates }
    end
  end

  # GET /possible_dates/1
  # GET /possible_dates/1.json
  def show
    @possible_date = PossibleDate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @possible_date }
    end
  end

  # GET /possible_dates/new
  # GET /possible_dates/new.json
  def new
    @possible_date = PossibleDate.new
    @events = @current_user.events

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @possible_date }
    end
  end

  # GET /possible_dates/1/edit
  def edit
    @possible_date = PossibleDate.find(params[:id])
    @events = @current_user.events
  end

  # POST /possible_dates
  # POST /possible_dates.json
  def create
    @possible_date = PossibleDate.new(params[:possible_date])
    @possible_date.event_id = params[:event][:id]

    respond_to do |format|
      if @possible_date.save
        format.html { redirect_to @possible_date, notice: 'Possible date was successfully created.' }
        format.json { render json: @possible_date, status: :created, location: @possible_date }
      else
        format.html { render action: "new" }
        format.json { render json: @possible_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /possible_dates/1
  # PUT /possible_dates/1.json
  def update
    @possible_date = PossibleDate.find(params[:id])
    @possible_date.event_id = params[:event][:id]

    respond_to do |format|
      if @possible_date.update_attributes(params[:possible_date])
        format.html { redirect_to @possible_date, notice: 'Possible date was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @possible_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possible_dates/1
  # DELETE /possible_dates/1.json
  def destroy
    @possible_date = PossibleDate.find(params[:id])
    @possible_date.destroy

    respond_to do |format|
      format.html { redirect_to possible_dates_url }
      format.json { head :no_content }
    end
  end
end
