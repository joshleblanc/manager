class App < ApplicationRecord

  def broadcast
    LogChannel.broadcast_to self, tail
  end

  def initial_log
    File.read log_path
  end

  def update_app
    Dir.chdir(app_path) do
      `git pull`
      restart_app
    end
  end

  def restart_app
    `#{restart_command}`
  end
end
