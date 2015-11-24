require 'test_helper'

class BirdTest < ActiveSupport::TestCase
  test "bird belongs to a species" do
    bird = Bird.new(name: "Harris Hawk", image: "http://birdsflight.com/wp-content/uploads/2012/03/harris-hawk.jpg")

    assert bird.valid?, "Must assign a species."
    assert bird.respond_to?(:species)
  end
end
