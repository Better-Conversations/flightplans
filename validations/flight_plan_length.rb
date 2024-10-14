class Validations::FlightPlanLength
  include BCF::FlightPlans::Validation

  def should_apply?(subject)
    subject.is_a?(BCF::FlightPlans::FlightPlan)
  end

  def validate(subject)
    runtime = subject.blocks.reduce(subject.initial_time) do |time, block|
      time + (block.length || 0)
    end

    expect(runtime).to eq(subject.total_length)

    expect(subject.instruction_starts).not_to be_nil
    expect(subject.instruction_ends).not_to be_nil

    expect(subject.instruction_starts).to eq(30)

    # As per Chandima the instruction content is actually 59 minutes so that the sponsor close starts in the 60 minute
    # window.
    expect(subject.instruction_ends - subject.instruction_starts).to eq(59)
  end
end
