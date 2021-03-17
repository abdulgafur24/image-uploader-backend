require 'test_helper'

class Api::ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_image = api_images(:one)
  end

  test "should get index" do
    get api_images_url, as: :json
    assert_response :success
  end

  test "should create api_image" do
    assert_difference('Api::Image.count') do
      post api_images_url, params: { api_image: { url: @api_image.url } }, as: :json
    end

    assert_response 201
  end

  test "should show api_image" do
    get api_image_url(@api_image), as: :json
    assert_response :success
  end

  test "should update api_image" do
    patch api_image_url(@api_image), params: { api_image: { url: @api_image.url } }, as: :json
    assert_response 200
  end

  test "should destroy api_image" do
    assert_difference('Api::Image.count', -1) do
      delete api_image_url(@api_image), as: :json
    end

    assert_response 204
  end
end
