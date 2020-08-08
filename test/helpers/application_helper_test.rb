require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
    
    test "full title helper" do
        assert_equal full_title, 'Eric Trimble'
        assert_equal full_title("Help"), 'Help | Eric Trimble'
    end
    
end
