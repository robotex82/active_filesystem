module ActiveFilesystem
  class Base
    # include ActiveModel::AttributeMethods
    include ActiveModel::Conversion
    
    def self.root_path=(value)
      @root_path = value && value.to_s
    end
    
    def self.all
      raise "Invalid root path: #{@root_path}" unless File.directory?(@root_path)
      Dir.entries(@root_path).reduce([]) { |a, item| a << ActiveFilesystem::Item.new({ :path => @root_path, :basename => item }) }
    end
  end
end
