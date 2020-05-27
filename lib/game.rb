require_relative('./player.rb')
require_relative('./board.rb')
# rubocop: disable Style/DoubleNegation
class Namevalidation
  def numeric?(string)
    !!Kernel.Float(string)
  rescue TypeError, ArgumentError
    false
  end

  def empty_string(strings)
    true if (strings == ' ') || (strings == '') || strings.nil?
  end

  def same_name(team1, team2)
    if team1 == team2
      return 'please Enter different name:'
    end
  end

  def name_valid(name_num, strings)
    if numeric?(name_num) || empty_string(strings)
      return 'Enter player name as string'
    end
  end
end

# rubocop: enable Style/DoubleNegation
