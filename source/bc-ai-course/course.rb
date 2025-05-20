require 'bcf/flightplans'
require_relative '../shared/course_config'

require_relative 'bc-ai-module-1'
require_relative 'bc-ai-module-2'
require_relative 'bc-ai-module-3'
require_relative 'bc-ai-module-4'
require_relative 'bc-ai-module-5'

module BCAICourse
  CONFIG = CourseConfig::Config.new(
    identifier: 'bc-ai',
    title: 'Better Conversations with AI'
  )

  COURSE = BCF::FlightPlans::define_course CONFIG.title, [
    BC_AI_MODULE_1,
    BC_AI_MODULE_2,
    BC_AI_MODULE_3,
    BC_AI_MODULE_4,
    BC_AI_MODULE_5,
  ]
end

# For backward compatibility
BC_AI_COURSE = BCAICourse::COURSE
