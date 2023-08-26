require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test 'should get index' do
    get posts_url
    assert_response :success
  end

  test 'should get new logged in expect success' do
    sign_in users(:one)
    get new_post_url
    assert_response :success
  end

  test 'should get new not logged in expect failure' do
    get new_post_url
    assert_response :redirect
  end

  test 'should create post title not nil signed in expect success' do
    sign_in users(:one)
    assert_difference('Post.count') do
      post posts_url, params: { post: { title: @post.title } }
    end
    assert_redirected_to post_url(Post.last)
  end

  test 'should create post title not nil not signed in expect redirect' do
    assert_no_difference('Post.count') do
      post posts_url, params: { post: { title: @post.title } }
    end
    assert_response :redirect
  end

  test 'should create post no title signed in expect unprocessable entity' do
    sign_in users(:one)
    assert_no_difference('Post.count') do
      post posts_url, params: { post: { title: nil } }
    end
    assert_response :unprocessable_entity
  end

  test 'should show post' do
    get post_url(@post)
    assert_response :success
  end

  test 'should get edit not logged expect redirect' do
    get edit_post_url(@post)
    assert_response :redirect
  end

  test 'should get edit logged expect success' do
    sign_in users(:one)
    get edit_post_url(@post)
    assert_response :success
  end

  test 'should update post not logged expect redirect' do
    assert_no_difference 'Post.count' do
      patch post_url(@post), params: { post: { title: @post.title } }
    end
    assert_response :redirect
  end

  test 'should update post logged in expect success' do
    sign_in users(:one)
    assert_no_difference 'Post.count' do
      patch post_url(@post), params: { post: { title: 'postTeste' } }
    end
    assert_redirected_to post_url(@post)
  end

  test 'should update post logged in no title expect unprocessable entity' do
    sign_in users(:one)
    assert_no_difference 'Post.count' do
      patch post_url(@post), params: { post: { title: nil } }
    end
    assert_response :unprocessable_entity
  end

  test 'should destroy post not logged in expect redirect' do
    assert_no_difference 'Post.count' do
      delete post_url(@post)
    end
    assert_response :redirect
  end

  test 'should destroy post logged in expect success' do
    sign_in users(:one)
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end
    assert_redirected_to posts_url
  end
end
