require 'eventmachine'
require 'rspec'

require 'em/spec_helpers'

describe 'EM.run_all_ticks' do
  it 'should allow setting message expectations for EM code' do
    widget = double('widget')
    widget.should_receive(:poke)

    EM.next_tick { widget.poke }

    EM.run_all_ticks
  end
end
