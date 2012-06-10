require 'spec_helper'
#run all tests : Ctrl - Shift - T
describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Home Page'" do
      visit home_path
      page.should have_selector('h1', :text => 'Home page')
    end

    it "should have the title 'Warmup App | Home'" do
      visit home_path
      page.should have_selector('title',
                        :text => "Warmup App | Home")
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
                        :text => "Warmup app | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Page'" do
      visit about_path
      page.should have_selector('h1', :text => 'About page')
    end

    it "should have the title 'Amina's app'" do
      visit about_path
      page.should have_selector('title', :text => "Warmup App | About")
    end

    it "should not have the custom title 'Amina's app | About'" do
      visit about_path
      page.should_not have_selector('title', text: "Warmup app | About")
    end

  end


  describe "Contact Page" do

    it "should have the h1 'Contact Page'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact Page')
    end

    it "should have the title 'Warmup App | Contact" do
      visit contact_path
      page.should have_selector('title', text: "Warmup App | Contact")
    end

  end
end