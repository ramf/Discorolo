require 'rails_helper'

RSpec.drescribe ApplicarionHelper, type: :helper do
  describe ".handle_field" do
    it "should return a field if exists" do
      record = create(:record)
      expect(helper.handle_field(record.client_description)).to eq(record.client_description)
    end

    it "should return 'n/d' if a blank or nil element" do
      expect(helper.handle_field('')).to eq('n/d')
      expect(helper.handle_field(nil)).to eq('n/d')
    end
  end
end
