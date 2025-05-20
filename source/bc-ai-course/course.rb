require 'bcf/flightplans'
require_relative '../shared/course_config'

require_relative 'module_1'
require_relative 'module_2'
require_relative 'module_3'
require_relative 'module_4'
require_relative 'module_5'

module BC_AI_COURSE
  CONFIG = CourseConfig::Config.new(
    identifier: 'bc-ai', # name should match the *-course directory
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
