require 'spec_helper'

describe MissingRootPath do
  it "should throw an error when trying to find all" do
    lambda { MissingRootPath.all }.should raise_error
  end
end
