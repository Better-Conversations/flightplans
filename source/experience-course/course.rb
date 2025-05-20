require 'bcf/flightplans'

require_relative 'module_1'
require_relative 'module_2'
require_relative 'module_3'
require_relative 'module_4'
require_relative 'module_5'
require_relative 'module_6'

EXPERIENCE_COURSE = BCF::FlightPlans::define_course "Experience Course", [
  MODULE_1,
  MODULE_2,
  MODULE_3,
  MODULE_4,
  MODULE_5,
  MODULE_6,
]
