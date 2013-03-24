require File.dirname(__FILE__) + '/../lib/xander-api'

include Xander

Experiment.site="http://localhost:5900/"
Variant.site="http://localhost:5900/"

describe Experiment, "#new" do
  it "should make a new request" do
    e = Experiment.new :name => "Test 1"
    e.save
    e.id.should_not == nil
  end

  it "should have variants" do
    v = Variant.new :color => 'red'
    v.save

    e = Experiment.new :name => "Test 2", :variants => [v]
    e.save

    e.variants.should include v
  end

end

describe Variant, "#new" do
  it "should make a new request" do
    v = Variant.new :name => "Test 1"
    v.save
    v.id.should_not == nil
  end

  it "should count impressions" do
    v = Variant.new :color => 'red'
    v.impressions.should == 0
    v.impression

    v.impressions.should == 1
  end

  it "should count conversions" do
    v = Variant.new :color => 'red'
    v.conversions.should == 0
    v.conversion

    v.conversions.should == 1
  end
end
