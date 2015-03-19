class PostOfficeManager
  @@post_office_pipe = nil
  @@smtp_port = nil
  @@pop_port = nil

  def self.smtp_port
    @@smtp_port ||= ENV['POST_OFFICE_SMTP_PORT'] || 25000
  end

  def self.pop_port
    @@pop_port ||= ENV['POST_OFFICE_POP_PORT'] || 11000
  end

  def self.post_office_pipe
    @@post_office_pipe
  end

  def self.start_post_office(smtp=nil, pop=nil, kill_existing=true)
    @@smtp_port = smtp if smtp
    @@pop_port = pop if pop
    stop_post_office if kill_existing && running?
    if(@@post_office_pipe.nil? && !running?)
      @@post_office_pipe = IO.popen("post_office -s #{smtp_port} -p #{pop_port}")
    end
  end

  def self.run_post_office(smtp=nil, pop=nil, kill_existing=true)
    @@smtp_port = smtp if smtp
    @@pop_port = pop if pop
    stop_post_office if kill_existing && running?
    if(@@post_office_pipe.nil? && !running?)
      @@post_office_pipe = IO.popen("post_office -s #{smtp_port} -p #{pop_port}")
    end
    Process.wait(@@post_office_pipe.pid)
  end

  def self.running?
    `lsof -i TCP:#{smtp_port} | grep LISTEN | wc -l`.to_i == 1
  end

  def self.stop_post_office
    if @@post_office_pipe
      `kill #{@@post_office_pipe.pid}`
    else
      pid = find_post_office_pid
      `kill #{pid}` unless pid.nil?
    end
    @@post_office_pipe = nil
  end

  def self.find_post_office_pid
    commands = `lsof -i TCP:#{smtp_port} | grep LISTEN`
    pids = []
    commands.split("\n").each do |command|
      pid = command.split(/\s+/)[1]
      pids << pid
    end
    raise "Multiple post office processes(#{pids.join(',')})" if pids.uniq.length > 1
    pids.uniq.first
  end
end
#this didn't seem to just work!
#RSpec.configure do |config|
#  config.before(:suite) do
#    PostOfficeManager.start_post_office
#  end
#
#  config.before(:suite) do
#    PostOfficeManager.stop_post_office
#  end
#end
