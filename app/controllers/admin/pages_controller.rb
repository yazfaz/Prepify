class Admin::PagesController < ApplicationController
  before_action :set_page, only: [:show, :new,  :edit, :update, :destroy]
  before_filter :authorize_admin

  # GET /pages
  # GET /pages.json
  def index
    
    @subject = Subject.find(params[:subject_id])


  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:id])
    @pageable = @page.pageable
    @question = @pageable.id
    @instruction = @pageable.id
  end

  # GET /pages/new
  def new
    @subject = Subject.find(params[:subject_id])
    @page = @subject.pages.new(sequence_id: next_sequence_id)
    @pageable = @page.pageable
  end

  # GET /pages/1/edit
  def edit
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:id])
    # @pageable = @page.pageable 
  end

  # POST /pages
  # POST /pages.json
  def create
    @subject = Subject.find(params[:subject_id])
    @page =  @subject.pages.new(page_params)
    @pageable = @page.pageable
    
    
    if @page.save
      redirect_to admin_subject_pages_path(@subject)
        
    else
     render action: 'new' 
    end
    

  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to admin_subject_pages_path, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
        format.js { render layout: false }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
        format.js { render layout: false }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @subject = Subject.find(params[:subject_id])
    # Need to delete pageable too?
    @pageable = @page.pageable
    @pageable.destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to admin_subject_pages_path(@subject) }
      format.json { head :no_content }
      format.js { render layout: false }
    end
  end

  def sort
    @subject = Subject.find(params[:subject_id])
    @pages = @subject.pages
    @pages.each do |page|
      page.sequence_id = params['page'].index(page.id.to_s) + 1
      page.save
    end
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.    
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    

    def page_params
      params.permit(:page, :sequence_id, :pageable_id, :pageable_type, :subject_id)
    end
end
