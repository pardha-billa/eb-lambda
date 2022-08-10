require "test_helper"

class SimpleFileUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simple_file_upload = simple_file_uploads(:one)
  end

  test "should get index" do
    get simple_file_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_simple_file_upload_url
    assert_response :success
  end

  test "should create simple_file_upload" do
    assert_difference('SimpleFileUpload.count') do
      post simple_file_uploads_url, params: { simple_file_upload: { name: @simple_file_upload.name, s3_file: @simple_file_upload.s3_file } }
    end

    assert_redirected_to simple_file_upload_url(SimpleFileUpload.last)
  end

  test "should show simple_file_upload" do
    get simple_file_upload_url(@simple_file_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_simple_file_upload_url(@simple_file_upload)
    assert_response :success
  end

  test "should update simple_file_upload" do
    patch simple_file_upload_url(@simple_file_upload), params: { simple_file_upload: { name: @simple_file_upload.name, s3_file: @simple_file_upload.s3_file } }
    assert_redirected_to simple_file_upload_url(@simple_file_upload)
  end

  test "should destroy simple_file_upload" do
    assert_difference('SimpleFileUpload.count', -1) do
      delete simple_file_upload_url(@simple_file_upload)
    end

    assert_redirected_to simple_file_uploads_url
  end
end
