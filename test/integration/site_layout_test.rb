require 'test_helper'

class SiteLayoutTestTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "Site Layout Test" do 
  	get root_path
  	assert_template 'pages/index'
  	assert_select "a[href=?]", root_path, count: 1
  	assert_select "a[href=?]", about_path, count: 2
  	assert_select "a[href=?]", contact_path, count:2

  end
end
