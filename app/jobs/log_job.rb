class LogJob < ApplicationJob
  queue_as :default

  def perform(*args)


    LogJob.perform_now(*args)
  end
end
