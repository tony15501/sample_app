require 'spec_helper'

describe "Static Pages" do
  subject {page}

	before {visit root_path}
    it {should have_content('Sample App')}
    it {should have_title("Ruby on Rails Tutorial Sample App")}
    it {should_not have_title('|home')}
  # describe "Home page " do
  # it "should have the content 'Sample App'" do
  # #visit '/static_pages/home'
  # #visit root_path
  # expect(page).to have_content('Sample App')
      
  #   end
  # it "should have the title " do
  # #visit '/static_pages/home'
  # #visit root_path
  # expect(page).to have_title("Ruby on Rails Tutorial Sample App")

  #   end
  #   it "should not have a custum page title" do
  #     #visit '/static_pages/home'
  #     #visit root_path
  #     expect(page).not_to have_title('| Home')

    end

describe "Contact page" do 
  it "should have the content 'Contact'" do 
    
    visit contact_path
    expect(page).to have_content('Contact')
  end
  it "should have the title 'Contact'" do 
    #visit '/static_pages/contact'
    visit root_path
    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
      end
end
