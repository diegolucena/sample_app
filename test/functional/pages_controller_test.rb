require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  #tests for home
  
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should have the right title" do
    get :home
    assert_select "title", "#{@base_title} | Home"
  end
  
  test "should have a home at '/'" do
    assert_routing '/', :controller => 'pages', :action => 'home'
  end

  #end tests for home
  
  #tests for contact
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "contact should have the right title" do
    get :contact
    assert_select 'title', "#{@base_title} | Contact"
  end
  
  test "should have contact at '/contact'" do
    assert_routing '/contact', :controller => 'pages', :action => 'contact'
  end

  #end tests for contact

  #tests for about  

  test "should get about" do
    get :about
    assert_response :success
  end

  test "about should have the right title" do
    get :about
    assert_select 'title', "#{@base_title} | About"
  end
  
  
  test "should have about at '/about'" do
    assert_routing '/about', :controller => 'pages', :action => 'about'
  end

  #end tests form about
  
  
  #tests for help  

  test "should get help" do
    get :help
    assert_response :success
  end

  test "help should have the right title" do
    get :help
    assert_select 'title', "#{@base_title} | Help"
  end
  
  test "should have help at '/help'" do
    assert_routing '/help', :controller => 'pages', :action => 'help'
  end

  #end tests form help
end
