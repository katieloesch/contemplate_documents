class ContemplateDocumentsController < ApplicationController
  before_action :set_contemplate_document, only: [:show, :update, :destroy]

  # GET /contemplate_documents
  def index
    @contemplate_documents = ContemplateDocument.order('created_at DESC')

    render json: @contemplate_documents
  end

  # GET /contemplate_documents/1
  def show
    render json: @contemplate_document
  end

  # POST /contemplate_documents
  def create
    @contemplate_document = ContemplateDocument.new(contemplate_document_params)

    if @contemplate_document.save
      render json: @contemplate_document, status: :created, location: @contemplate_document
    else
      render json: @contemplate_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contemplate_documents/1
  def update
    if @contemplate_document.update(contemplate_document_params)
      render json: @contemplate_document
    else
      render json: @contemplate_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contemplate_documents/1
  def destroy
    @contemplate_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contemplate_document
      @contemplate_document = ContemplateDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contemplate_document_params
      params.require(:contemplate_document).permit(:title, :description, :file_url, :text, :updated_at, :image_url, :text)
    end
end
