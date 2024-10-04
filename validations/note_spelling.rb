# frozen_string_literal: true

require 'ffi/aspell'

class Validations::NoteSpelling
  include BCF::FlightPlans::Validation

  def initialize
    @speller = FFI::Aspell::Speller.new('en_GB')
  end

  def should_apply?(subject)
    subject.respond_to?(:content)
  end

  def validate(subject)
    content = subject.content
    words = content.split(/\s/)

    words.each do |word|
      word = word.gsub(/[^a-zA-Z0-9']/, '')
      next if @speller.correct?(word)
      raise BCF::FlightPlans::ValidationError, "Spelling error: #{word}"
    end
  end
end
