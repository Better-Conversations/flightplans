class Validations::CourseStructure
  include BCF::FlightPlans::Validation

  def should_apply?(subject)
    subject.is_a?(BCF::FlightPlans::Course)
  end

  def validate(subject)
    expect(subject.title).to be_a(String)
    expect(subject.modules).to be_an(Array)
    expect(subject.modules).not_to be_empty

    expect(subject.modules).to all(be_a(BCF::FlightPlans::FlightPlan))

    expect(subject.modules.map(&:module_title)).to match_array(subject.modules.map(&:module_title).uniq)
    expect(subject.modules.map(&:module_number)).to match_array(subject.modules.map(&:module_number).uniq)
  end
end
