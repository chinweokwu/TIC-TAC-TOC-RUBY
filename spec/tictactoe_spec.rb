require_relative '../lib/game'

describe Name_validation do
  sa = Name_validation.new
  name_num = "123"
  strings = " "
  name = "paul"
  team1 = "peter"
  team2 = "peter"

  context "validation of player name" do
    it "" do
      expect(sa.name_valid(name_num, strings)).should be('Enter player name as string')
    end

    it "" do
      expect(sa.same_name(team1,team2)).should be('please Enter different name:')
    end
  end
end