require 'bcf/flightplans'

require_relative 'bc-ai-module-1'
require_relative 'bc-ai-module-2'
require_relative 'bc-ai-module-3'
require_relative 'bc-ai-module-4'
require_relative 'bc-ai-module-5'

BC_AI_COURSE = BCF::FlightPlans::define_course "Better Conversations with AI", [
  BC_AI_MODULE_1,
  BC_AI_MODULE_2,
  BC_AI_MODULE_3,
  BC_AI_MODULE_4,
  BC_AI_MODULE_5,
]
