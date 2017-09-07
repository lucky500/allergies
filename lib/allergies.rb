class AllergyScore
  def initialize
    @allergen_scores = {
      1 => "eggs",
      2 => "peanuts",
      4 => "shellfish",
      8 => "strawberries",
      16 => "tomatoes",
      32 => "chocolate",
      64 => "pollen",
      128 => "cats"
    }
  end

  def get_allergens(score)
    allergens_result = []
    @allergen_scores.keys.sort.reverse.each do |allergen_score|
      if allergen_score <= score
        allergens_result.push(@allergen_scores.fetch(allergen_score))
        score -= allergen_score
      end
    end
    return allergens_result
  end
end
