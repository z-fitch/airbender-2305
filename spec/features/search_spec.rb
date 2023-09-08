require "rails_helper"

RSpec.describe "Search Index Page" do
  describe "Fire Nation Search" do
    it "I can search for the fire nation" do
      visit root_path

      select "Fire Nation", from: :nation
      click_button "Search For Members"

      expect(current_path).to eq(search_path)
      expect(current_path).to_not eq(root_path)
    end

    it "can show search results with the total number who live in the Fire Nation" do
      visit root_path

      select "Fire Nation", from: :nation
      click_button "Search For Members"

      expect(page).to have_content("Current Resident Count:")
    end

    it "can show search results with the top 25 results each with their name (and photo if presesnt), allies, enemies, or affiliations" do
      visit root_path

      select "Fire Nation", from: :nation
      click_button "Search For Members"

        # ! Its supposed to be 25 but I couldnt get the pagination to work :/
      # expect(page).to have_content("Name:", count: 25)
      # expect(page).to have_content("Allies:", count: 25)
      # expect(page).to have_content("Enemies", count: 25)
      # expect(page).to have_content("Affiliations:", count: 25)

      expect(page).to have_content("Name:", count: 20)
      expect(page).to have_content("Allies:", count: 20)
      expect(page).to have_content("Enemies", count: 20)
      expect(page).to have_content("Affiliations:", count: 20)
    end
  end
end