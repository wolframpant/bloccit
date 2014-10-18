describe Vote do
  before do
  v = Vote.new(value: 1)
  v2 = Vote.new(value: -1)
  v3 = Vote.new(value: 2)
  end

  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect(v || v2).to eq(true)
        expect(v3).to eq(false)
      end
    end
  end
end
