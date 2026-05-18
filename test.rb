# Copyright (c) 2026 Better Conversations Foundation Ltd.
# Licensed under the MIT License. See LICENSE.txt.

require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'


test = BCF::FlightPlans::ConventionalFlightPlan.build do
  
  block(name: "Close", lead_by: :fx1) do
    length 1

    
  end
      
end