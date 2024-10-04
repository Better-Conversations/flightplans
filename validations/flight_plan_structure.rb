class Validations::FlightPlanStructure
  include BCF::FlightPlans::Validation

  def should_apply?(subject)
    subject.is_a?(BCF::FlightPlans::FlightPlan)
  end

  def validate(subject)
    expect(subject.module_number).to be_an Integer
    expect(subject.module_title).to be_a String

    expect(subject.blocks).not_to be_empty
    expect(subject.total_length).to be_an Integer
    expect(subject.initial_time).to be_an Integer

    runtime = flight_plan.blocks.reduce(flight_plan.initial_time) do |time, block|
      time + (block.length || 0)
    end

    expect(runtime).to eq(flight_plan.total_length)
  end
end
