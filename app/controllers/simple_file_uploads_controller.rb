class SimpleFileUploadsController < ApplicationController
  before_action :set_simple_file_upload, only: %i[ show edit update destroy ]

  # GET /simple_file_uploads or /simple_file_uploads.json
  def index
    @simple_file_uploads = SimpleFileUpload.all
  end

  # GET /simple_file_uploads/1 or /simple_file_uploads/1.json
  def show
  end

  # GET /simple_file_uploads/new
  def new
    @simple_file_upload = SimpleFileUpload.new
  end

  # GET /simple_file_uploads/1/edit
  def edit
  end

  # POST /simple_file_uploads or /simple_file_uploads.json
  def create
    @simple_file_upload = SimpleFileUpload.new(simple_file_upload_params)

    respond_to do |format|
      if @simple_file_upload.save
        format.html { redirect_to simple_file_upload_url(@simple_file_upload), notice: "Simple file upload was successfully created." }
        format.json { render :show, status: :created, location: @simple_file_upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @simple_file_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_file_uploads/1 or /simple_file_uploads/1.json
  def update
    respond_to do |format|
      if @simple_file_upload.update(simple_file_upload_params)
        format.html { redirect_to simple_file_upload_url(@simple_file_upload), notice: "Simple file upload was successfully updated." }
        format.json { render :show, status: :ok, location: @simple_file_upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @simple_file_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_file_uploads/1 or /simple_file_uploads/1.json
  def destroy
    @simple_file_upload.destroy

    respond_to do |format|
      format.html { redirect_to simple_file_uploads_url, notice: "Simple file upload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_file_upload
      @simple_file_upload = SimpleFileUpload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def simple_file_upload_params
      params.require(:simple_file_upload).permit(:name, :s3_file)
    end
end
