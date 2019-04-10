class JourneysController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.start_date = params[:start_date]
    @journey.end_date = params[:end_date]
    @journey.status = "Step 0"

    if @journey.save!
      redirect_to journey_steps_path(@journey)
    else
      render :new
    end
  end

  def journey_params
      params.require(:journey).permit(:people_count)
  end
end
