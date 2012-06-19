require 'spec_helper'
#run all tests : Ctrl - Shift - T
describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Home Page'" do
      visit home_path
      page.should have_selector('h1', :text => 'Home page')
    end

    it "should have the title 'IDK | Home'" do
      visit home_path
      page.should have_selector('title',
                        :text => "IDK | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Help page')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "IDK | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'IDK | About'" do
      visit about_path
      page.should have_selector('h1', :text => 'About page')
    end

    it "should have the title 'IDK | About'" do
      visit about_path
      page.should have_selector('title', :text => "IDK | About")
    end

    it "should not have the custom title 'IDK | About'" do
      visit about_path
      page.should_not have_selector('title', text: "IDK | About")
    end

  end


  describe "Contact Page" do
    before { visit contact_path }

    it "should have the h1 'Contact Page'" do
      page.should have_selector('h1', text: 'Contact Page')
    end

    it "should have the title 'IDK | Contact" do
      page.should have_selector('title', text: "IDK | Contact")
    end

  end
end