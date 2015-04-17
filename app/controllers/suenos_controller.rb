class SuenosController < ApplicationController
  before_action :set_sueno, only: [:show, :edit, :update, :destroy]

  # GET /suenos
  # GET /suenos.json
  def index
    @suenos = Sueno.all
  end

  # GET /suenos/1
  # GET /suenos/1.json
  def show
  end

  # GET /suenos/new
  def new
    @sueno = Sueno.new
  end

  # GET /suenos/1/edit
  def edit
  end

  # POST /suenos
  # POST /suenos.json
  def create
    @sueno = Sueno.new(sueno_params)

    respond_to do |format|
      if @sueno.save
        format.html { redirect_to @sueno, notice: 'Sueno was successfully created.' }
        format.json { render :show, status: :created, location: @sueno }
      else
        format.html { render :new }
        format.json { render json: @sueno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suenos/1
  # PATCH/PUT /suenos/1.json
  def update
    respond_to do |format|
      if @sueno.update(sueno_params)
        format.html { redirect_to @sueno, notice: 'Sueno was successfully updated.' }
        format.json { render :show, status: :ok, location: @sueno }
      else
        format.html { render :edit }
        format.json { render json: @sueno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suenos/1
  # DELETE /suenos/1.json
  def destroy
    @sueno.destroy
    respond_to do |format|
      format.html { redirect_to suenos_url, notice: 'Sueno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sueno
      @sueno = Sueno.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sueno_params
      params.require(:sueno).permit(:nombre, :image)
    end
end
