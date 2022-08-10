require "application_system_test_case"

class SimpleFileUploadsTest < ApplicationSystemTestCase
  setup do
    @simple_file_upload = simple_file_uploads(:one)
  end

  test "visiting the index" do
    visit simple_file_uploads_url
    assert_selector "h1", text: "Simple File Uploads"
  end

  test "creating a Simple file upload" do
    visit simple_file_uploads_url
    click_on "New Simple File Upload"

    fill_in "Name", with: @simple_file_upload.name
    fill_in "S3 file", with: @simple_file_upload.s3_file
    click_on "Create Simple file upload"

    assert_text "Simple file upload was successfully created"
    click_on "Back"
  end

  test "updating a Simple file upload" do
    visit simple_file_uploads_url
    click_on "Edit", match: :first

    fill_in "Name", with: @simple_file_upload.name
    fill_in "S3 file", with: @simple_file_upload.s3_file
    click_on "Update Simple file upload"

    assert_text "Simple file upload was successfully updated"
    click_on "Back"
  end

  test "destroying a Simple file upload" do
    visit simple_file_uploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simple file upload was successfully destroyed"
  end
end
