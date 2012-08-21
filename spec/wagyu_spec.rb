require "wagyu"

describe Wagyu do
	context "created with no arguments" do
		it "has four digits" do
			w = Wagyu.new
			w.digits.should eq(4)
		end

		it "uses decimal base" do
			w = Wagyu.new
			w.base.should eq(10)
		end
	end

	context "created with explicit digits argument" do
		it "has the digits specified" do
			w = Wagyu.new digits: 2
			w.digits.should eq(2)
		end

		it "has the default base" do
			w = Wagyu.new digits: 3
			w.base.should eq(10)
		end
	end

	context "created with explicit base argument" do
		it "has the base specified" do
			w = Wagyu.new base: 2
			w.base.should eq(2)
		end

		it "has the default digit number" do
			w = Wagyu.new base: 3
			w.digits.should eq(4)
		end
	end
end
