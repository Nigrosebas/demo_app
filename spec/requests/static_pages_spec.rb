require 'spec_helper'

describe "StaticPages" do

  	describe "Home page" do
    	it "debe tener el contenido 'Aplicacion de Ejemplo'" do
      	visit '/static_pages/home'
     		page.should have_content('Aplicacion de Ejemplo')
    	end
    		
    	it "should have the right title" do
    		visit '/static_pages/home'
    		page.should have_selector('title', :text => "Demo App | Home")
    	end
  	end

  	describe "Help page" do
  		it"should have the content 'Help'" do
  			visit '/static_pages/help'
  			page.should have_content('Help')
  		end
  		it "should have the right title" do
    		visit '/static_pages/help'
    		page.should have_selector('title', :text => "Demo App | Help")
    	end	
	end

	describe "About page" do
  		it"should have the content 'About Us'" do
  			visit '/static_pages/about'
  			page.should have_content('About Us')
  		end
  		it "should have the right title" do
    		visit '/static_pages/about'
    		page.should have_selector('title', :text => "Demo App | About")
    	end	
	end
end