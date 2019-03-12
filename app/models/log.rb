class Log < ApplicationRecord
  def tail
    `tail #{path}`
  end

  def broadcast
    LogChannel.broadcast_to self, tail
  end
end
