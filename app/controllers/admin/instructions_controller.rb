class Admin::InstructionsController < ApplicationController
  before_action :set_instruction, only: [:show, :edit, :update, :destroy]

  # GET /instructions
  # GET /instructions.json
  def index
    @instructions = Instruction.all
  end

  # GET /instructions/1
  # GET /instructions/1.json
  def show
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:page_id])
  end

  # GET /instructions/new
   def new
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:page_id])
    @instruction = Instruction.new
    
  end

  # GET /instructions/1/edit
  def edit
       @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:page_id])
  end

  # POST /instructions
  # POST /instructions.json
   def create
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:page_id])
    @instruction = Instruction.new
    @page.pageable = @instruction

    respond_to do |format|
      if @instruction.save
        @page.save
        format.html { redirect_to admin_subject_pages_path, notice: 'Instruction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @instruction }
      else
        format.html { render action: 'new' }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructions/1
  # PATCH/PUT /instructions/1.json
  def update
    respond_to do |format|
      if @instruction.update(instruction_params)
        format.html { redirect_to @instruction, notice: 'Instruction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructions/1
  # DELETE /instructions/1.json
  def destroy
    @instruction.destroy
    respond_to do |format|
      format.html { redirect_to instructions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instruction_params
      params.require(:instruction).permit(:body, :image)
    end
end
