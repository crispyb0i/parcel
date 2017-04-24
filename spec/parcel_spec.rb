require('rspec')
require('parcel')

describe('Parcel') do
  describe("#volume") do
    it("returns the volume of the parcel") do
      test_parcel = Parcel.new(2,3,4,10,"3-5 days")
      expect(test_parcel.volume()).to(eq(24))
    end
  end
  describe("#cost_to_ship") do
    it("returns the cost to ship based on weight. If volume is greater than 50 , add $10 to total cost") do
      test_parcel = Parcel.new(2,3,4,10,"3-5 days")
      expect(test_parcel.cost_to_ship()).to(eq(20))
    end
    it("returns the cost to ship based on weight. If weight and volume is greater than 50 , add $40 to total cost") do
      test_parcel = Parcel.new(2,3,30,51,"3-5 days")
      expect(test_parcel.cost_to_ship()).to(eq(40))
    end
    it("returns the cost to ship based on speed of delivery. If same day shipping, add $10 to total cost") do
      test_parcel = Parcel.new(2,3,30,51,"same_day")
      expect(test_parcel.cost_to_ship()).to(eq(50))
    end
  end
end
