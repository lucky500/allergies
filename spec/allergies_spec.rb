require 'rspec'
require 'allergies'

describe("AllergyScore#get_allergens") do
  it("returns empty array if score does not equal any allergies") do
    allergies = AllergyScore.new()
    expect(allergies.get_allergens(0)).to(eq([]))
  end

  it("returns an array with single value if score is equal to one allergen's scores") do
    allergies = AllergyScore.new()
    expect(allergies.get_allergens(4)).to(eq(["shellfish"]))
  end

  it("returns an array with multiple values if a score equals the sum of multiple allergens' scores") do
    allergies = AllergyScore.new()
    expect(allergies.get_allergens(131)).to(eq(["cats", "peanuts", "eggs"]))
  end
end
