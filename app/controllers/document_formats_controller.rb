class DocumentFormatsController < ApplicationController
  # GET /document_formats
  # GET /document_formats.json
  def index
    @document_formats = DocumentFormat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @document_formats }
    end
  end

  # GET /document_formats/1
  # GET /document_formats/1.json
  def show
    @document_format = DocumentFormat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document_format }
    end
  end

  # GET /document_formats/new
  # GET /document_formats/new.json
  def new
    @document_format = DocumentFormat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document_format }
    end
  end

  # GET /document_formats/1/edit
  def edit
    @document_format = DocumentFormat.find(params[:id])
  end

  # POST /document_formats
  # POST /document_formats.json
  def create
    @document_format = DocumentFormat.new(params[:document_format])

    respond_to do |format|
      if @document_format.save
        format.html { redirect_to root_path, notice: 'Document format was successfully created.' }
        format.json { render json: @document_format, status: :created, location: @document_format }
      else
        format.html { render action: "new" }
        format.json { render json: @document_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /document_formats/1
  # PUT /document_formats/1.json
  def update
    @document_format = DocumentFormat.find(params[:id])

    respond_to do |format|
      if @document_format.update_attributes(params[:document_format])
        format.html { redirect_to document_formats_url, notice: 'Document format was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_formats/1
  # DELETE /document_formats/1.json
  def destroy
    @document_format = DocumentFormat.find(params[:id])
    @document_format.destroy

    respond_to do |format|
      format.html { redirect_to document_formats_url }
      format.json { head :no_content }
    end
  end
end
