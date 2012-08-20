require 'spec_helper'

describe Questionnaire do
 before do
    @questionnaire = Questionnaire.new(title: "Example Questionnaire")
  end

  subject { @questionnaire }

  it { should respond_to(:title) }
  
  it { should respond_to(:questions)}
  
  it { should be_valid }
  
  describe "when title is not present" do
    before { @questionnaire.title = " "}
    it { should_not be_valid }
  end
  

end
