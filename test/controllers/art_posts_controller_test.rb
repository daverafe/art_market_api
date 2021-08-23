require "test_helper"

class ArtPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_post = art_posts(:one)
  end

  test "should get index" do
    get art_posts_url, as: :json
    assert_response :success
  end

  test "should create art_post" do
    assert_difference('ArtPost.count') do
      post art_posts_url, params: { art_post: { description: @art_post.description, price: @art_post.price, sold: @art_post.sold, title: @art_post.title, user_id: @art_post.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show art_post" do
    get art_post_url(@art_post), as: :json
    assert_response :success
  end

  test "should update art_post" do
    patch art_post_url(@art_post), params: { art_post: { description: @art_post.description, price: @art_post.price, sold: @art_post.sold, title: @art_post.title, user_id: @art_post.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy art_post" do
    assert_difference('ArtPost.count', -1) do
      delete art_post_url(@art_post), as: :json
    end

    assert_response 204
  end
end
