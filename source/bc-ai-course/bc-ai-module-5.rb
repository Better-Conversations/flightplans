require 'bcf/flightplans'
require_relative '../shared/common_blocks'
require_relative '../shared/common_resources'

BC_AI_MODULE_5 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Ethical Use of AIs"
  module_number 5

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

    # Padding to make the validation work temporarily
    block(name: "Padding", lead_by: :fx1) do
    length 59
    end

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)
end 