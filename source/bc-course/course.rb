require 'bcf/flightplans'
require_relative '../shared/course_config'

require_relative 'module_1'
require_relative 'module_2'
require_relative 'module_3'
require_relative 'module_4'
require_relative 'module_5'
require_relative 'module_6'

module BC
  # Course configuration
  CONFIG = CourseConfig::Config.new(
    identifier: 'bc',
    title: 'Better Conversations'
  )

  # Create course instance
  COURSE = BCF::FlightPlans::define_course CONFIG.title, [
    MODULE_1,
    MODULE_2,
    MODULE_3,
    MODULE_4,
    MODULE_5,
    MODULE_6
  ]
end

# Export course constant
BC_COURSE = BC::COURSE
