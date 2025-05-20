require 'bcf/flightplans'
require_relative '../shared/course_config'

require_relative 'module_1'
require_relative 'module_2'
require_relative 'module_3'
require_relative 'module_4'
require_relative 'module_5'
require_relative 'module_6'

module BC_COURSE
  # Course configuration
  CONFIG = CourseConfig::Config.new(
    identifier: 'bc',
    title: 'Better Conversations'
  )

  # Create course instance
  COURSE = BCF::FlightPlans::define_course CONFIG.title, [
    BC_MODULE_1,
    BC_MODULE_2,
    BC_MODULE_3,
    BC_MODULE_4,
    BC_MODULE_5,
    BC_MODULE_6
  ]
end

# Export course constant
BC_COURSE = BC_COURSE::COURSE
