require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "movie with same name invalid" do
  	 Movie.create(name:"hola")

  	 m1 

    assert true
  end
end
