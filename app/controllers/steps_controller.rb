class StepsController < ApplicationController
  include Wicked::Wizard

  skip_before_action :authenticate_user!
  before_action :set_journey

  steps :environment, :transport, :information, :confirmation

  def show
    render_wizard
  end

  def update
    case step

    when :environment
      @journey.update_attributes(journey_params)
      @journey.status = "Step 1"
      redirect_to next_wizard_path

    when :transport
      @journey.update_attributes(journey_params)
      @journey.update(status: "Step 2")
      redirect_to next_wizard_path

    when :information
      @journey.update_attributes(journey_params)
      @journey.update(status: "Devis demandé")
      UserMailer.confirmation.deliver_now
      redirect_to next_wizard_path
    end
  end

  private

  def journey_params
      params.require(:journey).permit(:status, :destination_type, :transport_type, :name, :surname, :email, :birth_date, :phone, :is_a_surprise?)
  end

  def set_journey
    @journey = Journey.find(params[:journey_id])
  end
end
