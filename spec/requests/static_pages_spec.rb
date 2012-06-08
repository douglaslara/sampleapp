require 'spec_helper'

describe "Static pages" do
  
  describe "Home Page" do
    before { visit root_path }
    it "should have the content h1 'Welcome'" do
      page.should have_selector('h1', :text => 'Welcome')
    end
            
    it "should have the base title" do
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
    end
    
    it "should not have the title 'Home'" do
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  
  describe "Help Page" do
    before { visit help_path }
    it "should have the content h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end    
     
    it "should have the title 'Help'" do
      page.should have_selector('title', :text => 'Help')
    end
  end
  
  describe "About Page" do
    before { visit about_path }
    it "should have the content h1 'About Us'" do
      page.should have_selector('h1', :text => 'About')
    end
           
    it "should have the title 'About Us'" do
      page.should have_selector('title', :text => 'About')
    end
  end  
  
  describe "Contact Page" do
    before { visit contact_path }
    it "should have the content h1 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the title 'Contact'" do
      page.should have_selector('title', :text => 'Contact')
    end
  end
end
