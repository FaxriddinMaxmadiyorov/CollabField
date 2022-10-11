require 'navigation_helper.rb'
include PostsHelper

module ApplicationHelper
  include NavigationHelper
  include Private::ConversationsHelper
end
