# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with additional attributes', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in "book[title]", with: 'harry potter'
      fill_in "book[author]", with: 'J.K. Rowling'
      fill_in "book[price]", with: 19.99
      fill_in "book[published_date]", with: '1997-06-26'
      click_on 'Create Book'
  
      # Check if the book details are displayed on the show page
      expect(page).to have_content('harry potter')
      expect(page).to have_content('J.K. Rowling')
      expect(page).to have_content('19.99')
      expect(page).to have_content('1997-06-26')
    end
  end
  