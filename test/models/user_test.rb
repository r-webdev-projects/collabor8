require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
  #  foo = ('a'..'z').to_a.shuffle.first(8).join # random 8char string for unique email
    @user = User.new({:email => "dudewaat@gmail.com", :first_name => "someFirstName", 
                      :last_name => "someLastName", :password => "111111", 
                      :password_confirmation => "111111" })# .save(:validate => false)
    # save(:validate) is needed only when you use email validation, I think?
    # as a side-note, when .save() is used -  foo == true. Not exxactly sure why
        puts @user[:email]
  end
  
  test "user should be valid" do
    assert @user.valid?
  end
  
  test "first_name has to be proper length" do
    names = [nil, '', 'a', '123456789012345678901234567890']
    names.each do |invalid_name|
      @user[:first_name] = invalid_name # @user.first_name works as well here
      asswer_not @user.valid? "#{invalid_name} shouldn't be valid" # shows which is wrong
    end
  end
end
