require 'spec_helper'

describe Basic do
  describe ".all" do
    subject { Basic.all }
    
    it { should be_a_kind_of(Array) }
    its(:size) { should eq(Dir.entries(ActiveFilesystem::Engine.root + "spec/filesystems/basic").size) }
  end
end
