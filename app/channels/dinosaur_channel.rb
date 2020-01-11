class DinosaurChannel < ApplicationCable::Channel
  def subscribed
    stream_from "DinosaurChannel_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
