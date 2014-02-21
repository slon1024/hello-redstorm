require 'red_storm'

class ItemGenerator < RedStorm::DSL::Spout
  on_send { "Hello storm" }
end
