class LogChannel < ApplicationCable::Channel
  def subscribed
    p params
    @log = App.find(params[:id])
    stream_for @log
  end

  def unsubscribed
  end

  def update
    @log.broadcast
  end
end
