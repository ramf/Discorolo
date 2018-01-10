require 'rails_helper'

RSpec.describe Record, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:contact)).to be_valid
  end
    context "Should Respond" do
      it { should respond_to(:description) }
      it { should respond_to(:datarecord) }
      it { should respond_to(:dataprotocol) }
      it { should respond_to(:origin) }
      it { should respond_to(:topic) }
      it { should respond_to(:part) }

    end

    context "Validations" do
      it { should validate_presence_of(:description) }
      it { should validate_presence_of(:datarecord) }
      it { should validate_presence_of(:dataprotocol) }
      it { should validate_presence_of(:origin) }
      it { should validate_presence_of(:topic) }
      it { should validate_presence_of(:part) }

    end
end
