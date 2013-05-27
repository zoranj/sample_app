require 'spec_helper'

describe "StaticPage" do
    
    let(:basic_title) { "Ruby on Rails Tutorial Sample App"}
    
    describe "Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            page.should have_content('Sample App')
        end
        it "should have the right title" do
            visit '/static_pages/home'
            page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Home")
        end
        it "should have the h1 'Sample App'" do
            visit '/static_pages/home'
            page.should have_selector('h1', :text => 'Sample App')
        end
    end
    describe "Help" do
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            page.should have_content('Help')
        end
        it "should have the title 'Help'" do
            visit '/static_pages/help'
            page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Help")
        end
    end
    describe "About" do
        it "should have the content 'about'" do
            visit '/static_pages/about'
            page.should have_content('About')
        end
        it "should have the title 'About Us'" do
            visit '/static_pages/about'
            page.should have_selector('title',
                            :text => "Ruby on Rails Tutorial Sample App | About Us")
        end
    end
    describe "Contact" do
        it "should have the content 'Contact'" do
            visit '/static_pages/contact'
            page.should have_content('Contact')
        end
        it "should have the title 'Contact'" do
            visit '/static_pages/contact'
            page.should have_selector('title',
                            :text => "Ruby on Rails Tutorial Sample App | Contact")
        end
        it "should have the h1 'Contact'" do
            visit '/static_pages/contact'
            page.should have_selector('h1', :text => "Contact")
        end
    end
end
