require 'spec_helper'

describe Root do
  it "should allow to set the root path" do
    Root.should respond_to(:root_path=)
  end
  
  it "should respond to all" do
    Root.should respond_to(:all)
  end
end
