require 'bcf/flightplans'
require_relative '../shared/course_config'

require_relative 'module_1'
require_relative 'module_2'
require_relative 'module_3'
require_relative 'module_4'
require_relative 'module_5'
require_relative 'module_6'

module ExperienceCourse
  CONFIG = CourseConfig::Config.new(
    identifier: 'experience',
    title: 'Experience Course'
  )

  COURSE = BCF::FlightPlans::define_course CONFIG.title, [
    MODULE_1,
    MODULE_2,
    MODULE_3,
    MODULE_4,
    MODULE_5,
    MODULE_6,
  ]
end

# For backward compatibility
EXPERIENCE_COURSE = ExperienceCourse::COURSE
