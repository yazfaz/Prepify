class PagesController < ApplicationController
  before_filter :find_pageable
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_current_student
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:sequence_id, :pageable_id, :pageable_type, :subject_id)
    end

    def find_pageable
      @klass = params[:pageable_type].capitalize.constantize
      @pageable = klass.find(params[:pageable_id])
    end
end
