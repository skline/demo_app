require 'spec_helper'

describe User do
  
  before( :each) do
    @attr = { 
              :name => "Example User", 
              :email => "user@example.com",
              :password => "foobar",
              :password_confirmation => "foobar"
               }  
     @user = User.create!(@attr)
  
  end
  
  describe "status feed" do
    it "should have a feed" do 
      @user.should respond_to(:feed)
    end
  end
end