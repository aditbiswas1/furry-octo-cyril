require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit root_path
    	page.should have_content('Sample App')
    end
    it "should have the right title" do
    	visit root_path
    	page.should have_selector('title',
    								:text => "Ruby on Rails Tutorial Sample App | Home")
   	end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit help_path
  		page.should have_content('Help')
  	end
  	it "should have the right title" do
    	visit help_path
    	page.should have_selector('title',
    								:text => "Ruby on Rails Tutorial Sample App | Help")
   	end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit about_path
  		page.should have_content('About')
  	end
  	it "should have the right title" do
    	visit about_path
    	page.should have_selector('title',
    								:text => "Ruby on Rails Tutorial Sample App | About")
   	end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
