require 'spec_helper'

describe "Static Pages" do
	
  describe "Home page " do
  it "should have the content 'Sample App'" do
  visit '/static_pages/home'
  expect(page).to have_content('Sample App')
      
    end
  it "should have the title " do
  visit '/static_pages/home'
  expect(page).to have_title("Ruby on Rails Tutorial Sample App ")

    end
    it "should not have a custum page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
end
