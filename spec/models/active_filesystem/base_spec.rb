require 'spec_helper'

module ActiveFilesystem
  describe Base do
    it "should include ActiveModel::Conversion" do
      ActiveFilesystem::Base.include?(ActiveModel::Conversion).should be(true)
    end
  end
end
