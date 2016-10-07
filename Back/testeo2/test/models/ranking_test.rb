require 'test_helper'

class RankingTest < ActiveSupport::TestCase
  
  test "value between 1 to 5" do
  	r = rankings(:two)
    assert_empty Ranking.where(movie:@movie.id)
   end
end
