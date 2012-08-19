require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Inquisitor'" do
      visit root_path
      page.should have_content('Inquisitor')
    end
    
    
  end
end
