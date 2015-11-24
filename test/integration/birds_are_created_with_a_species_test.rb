class BirdsAndSpeciesTest < ActionDispatch::IntegrationTest

  test "a bird can be created for a specific species" do
    skip
    hawk = Species.create(name: "hawk")

    visit species_path(species)

    click_link "Add a new bird"

    harris_hawk = hawk.birds.create(name: "Harris Hawk",
                                   image:"http://birdsflight.com/wp-content/uploads/2012/03/harris-hawk.jpg")
    fill_in "Name", with: harris_hawk[:name]
    click_button "Add Bird To Your List Of Sightings"

    assert_equal species_path(species), current_path

    within("#birds") do
      assert page.has_content?(harris_hawk[:name])
    end
  end

end
