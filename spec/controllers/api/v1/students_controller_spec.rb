require 'spec_helper'

describe Api::V1::StudentsController do
  describe "GET #show" do
    before(:each) do
      @student = FactoryGirl.create :student
      get :show, id: @student.id
    end

    it "returns the information about a student's last_name " do
      student_response = json_response
      expect(student_response[:last_name]).to eql @student.last_name
    end

    it { should respond_with 200 }
  end

end
