require 'spec_helper'

describe Student do
  let(:student) { FactoryGirl.build :student }
  subject { student }

  #it { should respond_to(:first_name) }
  #it { should respond_to(:last_name) }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :first_name }
end
