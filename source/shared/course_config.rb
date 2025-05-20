module CourseConfig
  class Config
    attr_reader :identifier, :title, :version

    def initialize(identifier:, title:)
      @identifier = identifier
      @title = title
      @version = ENV['COURSE_VERSION'] || raise("Version must be set via COURSE_VERSION")
    end
  end
end 