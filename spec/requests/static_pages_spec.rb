require 'spec_helper'

describe "Static pages" do
  
  describe "Home Page" do
    it "should have the content h1 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end
            
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Home')
    end
  end
  
  describe "Help Page" do       
    it "should have the content h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end    
     
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Help')
    end
  end
  
  describe "About Page" do     
    it "should have the content h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
           
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'About')
    end
  end  
  
end