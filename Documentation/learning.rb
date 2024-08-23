# This is our Gem which interprets the data structure and provides the output
require 'bcf/flightplans'

# These are the common blocks that are used in the FlightPlan DSL
require_relative '../common_blocks'
# And some common resources
require_relative '../common_resources'

module_learning = BCF::FlightPlans::ConventionalFlightPlan.build do
  # module_title "Module Learning"
  # module_number 100

  block BCF::FlightPlans::CommonBlocks::PRE_FLIGHT
  block BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE
  block BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF

  demo <<~MD
  No demo.

  Alternative example for context:

  - Imagine you are watching TV and have muted it for the commercials.
    The first commercial you see shows a kitchen knife setting on a cutting board on the counter.
    Around it there are lots of different kinds of vegetables and a stock pot.
    Given that context, you would likely assume they were advertising a cooking show.
  - The next commercial starts. You see the same kitchen knife. This time it is in the trunk
    (boot) of car along with some rope, duct tape, a tarp and a shovel.  That context brings
    up a completely different kind of show! Even though the kitchen knife is exactly the same.
  MD

  block(name: "Greeting", lead_by: [:fx1, :fx2]) do
    length 5

    facilitator do
      spoken "Now, let’s check-in with your state using the Traffic Light Model"
      spoken("Please put in the chat if you are green, amber/yellow or red")
    end

    producer do
      instruction "Setup template Breakout Room for first breakout"
    end
  end

end
