require "./lib/player" 

describe Player do
  team1 = "paul"
  team2 = "arslan"
  player1 = Player.new(team1)
  player2 = Player.new(team2)

  it "" do
    expect(player1.name).to eq("paul")
  end

  it "" do 
    expect(player2.name).to eq("arslan")
  end
end