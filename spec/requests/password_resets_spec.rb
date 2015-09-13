require 'rails_helper'

describe "PasswordResets" do
   it "emails user when requesting password reset" do
     user = FactoryGirl.create(:user)
     visit login_path
     click_link "password"
     fill_in "Email", :with => user.email
     click_button "Reset Password"
   end
end   


describe "user_controller" do
  
  it "should have a current_user" do
    # note the fact that I removed the "validate_session" parameter if this was a scaffold-generated controller
    subject.current_user.should_not be_nil
  end

  it "should get index" do
    # Note, rails 3.x scaffolding may add lines like get :index, {}, valid_session
    # the valid_session overrides the devise login. Remove the valid_session from your specs
    get 'index'
    response.should be_success
  end
end