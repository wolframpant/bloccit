require 'rails_helper'

describe Vote do
 
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        v = Vote.new(value: 1)
        v2 = Vote.new(value: -1)
        v3 = Vote.new(value: 2)
        expect(v.valid? || v2.valid?).to eq(true)
        expect(v3.valid?).to eq(false)
      end
    end
  end
end
