require './lib/game.rb'

describe Name_Validation do
  sa = Name_Validation.new
  name_num = "123"
  strings = " "
  name = "paul"
  team1 = "peter"
  team2 = "peter"

  context "validation of player name" do
    it "" do
      expect(sa.name_valid(name_num, strings)).to eq('Enter player name as string')
    end

    it "" do
      expect(sa.same_name(team1,team2)).to eq('please Enter different name:')
    end
  end
end