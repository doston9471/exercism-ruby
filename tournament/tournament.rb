=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Tournament
  TEAM_NAME_WIDTH = 31

  def self.tally(input)
    results = Hash.new { |h, k| h[k] = { mp: 0, w: 0, d: 0, l: 0, p: 0 } }

    input.lines.each do |line|
      team1, team2, outcome = line.strip.split(';')
      update_results(results, team1, team2, outcome)
    end

    format_results(results)
  end

  def self.update_results(results, team1, team2, outcome)
    case outcome
    when 'win'
      results[team1][:mp] += 1
      results[team1][:w] += 1
      results[team1][:p] += 3

      results[team2][:mp] += 1
      results[team2][:l] += 1
    when 'loss'
      results[team1][:mp] += 1
      results[team1][:l] += 1

      results[team2][:mp] += 1
      results[team2][:w] += 1
      results[team2][:p] += 3
    when 'draw'
      results[team1][:mp] += 1
      results[team1][:d] += 1
      results[team1][:p] += 1

      results[team2][:mp] += 1
      results[team2][:d] += 1
      results[team2][:p] += 1
    end
  end

  def self.format_results(results)
    table = "Team".ljust(TEAM_NAME_WIDTH) + "| MP |  W |  D |  L |  P\n"
    sorted_results = results.sort_by { |team, data| [-data[:p], team] }

    sorted_results.each do |team, data|
      table << team.ljust(TEAM_NAME_WIDTH) + "|#{data[:mp].to_s.rjust(3)} |" \
               "#{data[:w].to_s.rjust(3)} |" \
               "#{data[:d].to_s.rjust(3)} |" \
               "#{data[:l].to_s.rjust(3)} |" \
               "#{data[:p].to_s.rjust(3)}\n"
    end

    table
  end
end
