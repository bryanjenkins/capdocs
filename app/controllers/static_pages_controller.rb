class StaticPagesController < ApplicationController
  def home
    @document_types   = DocumentType.all
    @business_areas   = BusinessArea.all
    @document_formats = DocumentFormat.all
  end

  def help
  end
end
