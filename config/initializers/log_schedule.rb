return unless defined?(Rails::Server)

Rufus::Scheduler.s.every '10s', overlap: false do
  Log.all.each do |log|
    LogChannel.broadcast_to log, log.tail
  end
end