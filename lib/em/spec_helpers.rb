module EM
  def self.with_all_ticks
    EM::run do
      yield
      stop_after_all_ticks
    end
  end

  def self.run_all_ticks
    EM::run{ stop_after_all_ticks }
  end

  def self.stop_after_all_ticks
    if @next_tick_queue && !@next_tick_queue.empty?
      EM::next_tick{ stop_after_all_ticks }
    else
      EM::stop
    end
  end
end
