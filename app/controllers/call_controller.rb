class CallController < ApplicationController
  def incoming
    user = PhoneNumber.find_by(number: params['To']).user
    Call.create(to_number: params['To'], from_number: params['From'], user: user)

    response = Twilio::TwiML::Response.new do |r|
      r.Dial callerId: params['To'] do |d|
        d.Number user.mobile_phone
      end
    end

    render xml: response.to_xml
  end
end
