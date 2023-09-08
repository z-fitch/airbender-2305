require "rails_helper"

RSpec.describe "Search Index Page" do
  describe "Fire Nation Search" do
    it "I can search for the fire nation" do
      visit root_path

      select "Fire Nation", from: :element_nation
      click_button "Search for Members"

      expect(current_path).to eq(search_path)
      expect(current_path).to_not eq(root_path)
    end

    it "can show search results with the total number who live in the Fire Nation" do
      visit root_path

      select "Fire Nation", from: :element_nation
      click_button "Search for Members"

      expect(page).to have_content("Current Resident Count: 98")
    end

    it "can show search results with the top 25 results each with their name (and photo if presesnt), allies, enemies, or affiliations" do
      visit root_path

      select "Fire Nation", from: :element_nation
      click_button "Search for Members"

      expect(page).to have_content("Name:", count: 25)
      expect(page).to have_content("Allies:", count: 25)
      expect(page).to have_content("Enemies", count: 25)
      expect(page).to have_content("Affiliations:", count: 25)
    end
  end
end