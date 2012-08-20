require 'spec_helper'

describe Question do
  let(:questionnaire) { Questionnaire.create(title: "Example Questionnaire") }

  before { @question = questionnaire.questions.build(type: "Short", content: "Example question", choices: " ") }
  
  subject { @question }
  
  it { should respond_to(:type) }
  it { should respond_to(:choices) }
  it { should respond_to(:content) }
  it { should respond_to(:questionnaire_id) }
  it { should respond_to(:questionnaire) }
  its(:questionnaire) { should == questionnaire }

  it { should be_valid }

  describe "when questionnaire_id is not present" do
    before { @question.questionnaire_id = nil }
    it { should_not be_valid }
  end
  
  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Question.new(questionnaire_id: questionnaire.id)
      end.should raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
end
