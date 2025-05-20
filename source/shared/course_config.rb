module CourseConfig
  class Config
    attr_reader :identifier, :title

    def initialize(identifier:, title:)
      @identifier = identifier
      @title = title
    end
  end
end 