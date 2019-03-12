class LogChannel < ApplicationCable::Channel
  def subscribed
    p params
    @log = Log.find(params[:wtf])
    stream_for @log
  end

  def unsubscribed
  end

  def update
    @log.broadcast
  end
end
