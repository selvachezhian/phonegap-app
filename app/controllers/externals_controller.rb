class ExternalsController < ApplicationController

  def list
    @details = External.all
  end

  def time_in
    External.create(time_in: Time.zone.now)

    respond_to do |format|
      format.json { render json: { status: 'Success' } }
      format.html
    end
  end

  def time_out
    External.create(time_out: Time.zone.now)

    respond_to do |format|
      format.json { render json: { status: 'Success' } }
      format.html
    end
  end

end
