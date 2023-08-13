# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'should not create post without title' do
    post = Post.new
    assert_not post.save, 'Saved the post without a title'
  end
end
