require 'spec_helper'

describe "UserPages" do
  
  describe "Sign Up Pages" do
    before { visit signup_path }
    it "should have 'Sign Up' in the title" do
      page.should have_selector('title', :text => 'Sign Up')
    end
    it "should have 'Sign Up' in h1" do
      page.should have_selector('h1', :text => 'Sign Up')
    end
  end
end
