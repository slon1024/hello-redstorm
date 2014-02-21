require 'red_storm'

require 'hello-redstorm/spouts/item_generator'
require 'hello-redstorm/bolts/transformer_bolt'

class HelloRedstormTopology < RedStorm::DSL::Topology
  spout ItemGenerator, :parallelism => 2 do
    output_fields :message
  end

  bolt TransformerBolt, :parallelism => 2 do
    source ItemGenerator, :shuffle
  end

  configure do |env|
    debug false
    #max_task_parallelism 2
    #num_workers 2
    #max_spout_pending 1000
  end
end
