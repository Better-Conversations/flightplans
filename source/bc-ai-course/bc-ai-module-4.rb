require 'bcf/flightplans'
require_relative '../shared/common_blocks'
require_relative '../shared/common_resources'

BC_AI_MODULE_4 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Feedback"
  module_number 4

  learning_outcomes <<~MD
    Learners will be able to:

    - [To be defined]

    Suggested learning outcomes for further trainings/interventions

    - [To be defined]
  MD

  demo <<~MD
    tbc
  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)
  block(BCF::FlightPlans::CommonBlocks::GREETING)
  instruction_starts
  instruction_ends
end 