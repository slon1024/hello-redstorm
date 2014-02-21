require 'red_storm'

class TransformerBolt < RedStorm::DSL::Bolt
  on_receive { |tuple| puts "message: #{tuple[:message]}" }
end
