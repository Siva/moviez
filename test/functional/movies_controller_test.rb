require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

class MoviesControllerTest < ActionController::TestCase

  context "GET:" do
    setup do
      get :index
    end
    should_assign_to(:movies)
    should_respond_with(:success)
  end
  
  context "on GET to :show for first record" do
      setup do
        @movie = Factory(:movie)
        get :show, :id => @movie.id
      end
      should_assign_to :movie
      should_respond_with :success
      should_render_template :show
      should_not_set_the_flash
      should "do something else really cool" do
        assert_equal @movie.id, assigns(:movie).id
      end
  end
  
  context "on GET to :new" do
    setup do
      get :new
    end
    should_assign_to :movie
    should_respond_with :success
    should_render_template :new
    should_not_set_the_flash
  end
  
  
  
    
  
end
