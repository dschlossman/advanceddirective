class DirectivesController < ApplicationController
  before_action :set_directive, only: [:show, :edit, :update, :destroy]

  # GET /directives
  # GET /directives.json
  def index
    @directives = Directive.all
  end

  # GET /directives/1
  # GET /directives/1.json
  def show
  end

  # GET /directives/new
  def new
    @directive = Directive.new
  end

  # GET /directives/1/edit
  def edit
  end

  # POST /directives
  # POST /directives.json
  def create
    @directive = Directive.new(directive_params)

    respond_to do |format|
      if @directive.save
        format.html { redirect_to @directive, notice: 'Directive was successfully created.' }
        format.json { render :show, status: :created, location: @directive }
      else
        format.html { render :new }
        format.json { render json: @directive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directives/1
  # PATCH/PUT /directives/1.json
  def update
    respond_to do |format|
      if @directive.update(directive_params)
        format.html { redirect_to @directive, notice: 'Directive was successfully updated.' }
        format.json { render :show, status: :ok, location: @directive }
      else
        format.html { render :edit }
        format.json { render json: @directive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directives/1
  # DELETE /directives/1.json
  def destroy
    @directive.destroy
    respond_to do |format|
      format.html { redirect_to directives_url, notice: 'Directive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directive
      @directive = Directive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directive_params
      params.require(:directive).permit(:name, :instructions)
    end
end
