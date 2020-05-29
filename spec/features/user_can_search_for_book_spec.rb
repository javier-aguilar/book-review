require 'rails_helper'

# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: "Rooney's second novel tracks two gifted but troubled teenagers across four years of friendship and occasional romance."
# Review Publication Date: 2019-04-08
# - Review 2: "Like "Conversations With Friends," "Normal People" also traces a young romance in Ireland."
# Review Publication Date: 2019-04-15



RSpec.describe "As a user" do
  describe "when I visit /"
    it "And I search for 'Normal People', I should see the book's info" do
      visit "/"
      fill_in "title", with: "Normal People"
      click_on "Find Book"

      expect(current_path).to eq "/search"
      expect(page).to have_content("Normal People by Sally Roony")
      expect(page).to have_content("Published By: Faber & Faber, Hogarth, Random House Large Print, Knopf Canada")
    end
end
