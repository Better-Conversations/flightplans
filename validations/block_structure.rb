# Copyright (c) 2026 Better Conversations Foundation Ltd.
# Licensed under the MIT License. See LICENSE.txt.

class Validations::BlockStructure
  include BCF::FlightPlans::Validation

  def should_apply?(subject)
    subject.is_a?(BCF::FlightPlans::Block)
  end

  def validate(subject)
    expect(subject.name).to be_a String
    expect(subject.length).to be > 0
  end
end
