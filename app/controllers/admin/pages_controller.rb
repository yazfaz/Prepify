class Admin::PagesController < ApplicationController
  # before_action :set_page, only: [:show, :new,  :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pageable = Subject.find(params[:subject_id])
    @pages = @pageable.pages 
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:id])
    @pageable = @page.pageable
  end

  # GET /pages/new
  def new
    @pageable = Subject.find(params[:subject_id])
    @page = @pageable.pages.new
  end

  # GET /pages/1/edit
  def edit
    @pageable = Subject.find(params[:subject_id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @subject = Subject.find(params[:subject_id])
    @page = @subject.pages.new(page_params)
    
      if @page.save
     redirect_to admin_subject_pages_path
      
      else
       render action: 'new' 
    
    
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @pageable = Subject.find(params[:subject_id])
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.    
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def on_page_save
      if @page.pageable_type == "Question"
           redirect_to new_admin_subject_question_path 
        elsif @page.pageable_type == "Instruction"
          redirect_to new_admin_subject_instruction_path 
      end
    end

    def page_params
      params.require(:page).permit(:sequence_id, :pageable_id, :pageable_type, :subject_id)
    end
end
