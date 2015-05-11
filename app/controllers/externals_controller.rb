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

  def hit_http
    puts "referrar url ---> #{request.referer}"
    respond_to do |format|
      format.json { render json: { hit_status: 'Success' } }
    end
  end

  def request_current_time
    respond_to do |format|
      format.json { render json: { current_time: Time.now } }
    end
  end

end
