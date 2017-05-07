class CallController < ApplicationController
  def incoming
    puts params.inspect
    response = Twilio::TwiML::Response.new do |r|
      r.Dial callerId: '(619) 432-3332' do |d|
        d.Number '954-529-5986'
      end
    end

    render xml: response.to_xml
  end
end
