require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'dummy application responds' do
    get root_url

    assert :success
  end
end
