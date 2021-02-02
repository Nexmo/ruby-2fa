class VerificationsController < ApplicationController
  before_action :send_verification_request

  def new
  end

  def create
    response = client.verify.check(
      request_id: session[:verification_id],
      code: params[:code]
    )

    if response.status == '0'
      session[:verified] = true
      redirect_to :root
    else
      flash[:alert] = 'Code invalid'
      redirect_to [:new, :verification]
    end
  end

  private

  def send_verification_request
    response = client.verify.request(
      number: current_user.number,
      brand: 'MyApp'
    )

    if response.status == '0'
      session[:verification_id] =
        response.request_id
    end
  end

  def client
    @client ||= Nexmo::Client.new(
      key: ENV['NEXMO_API_KEY'],
      secret: ENV['NEXMO_API_SECRET']
    )
  end
end
