class LinhasController < ApplicationController
  before_action :set_linha, only: %i[ show edit update destroy ]

  # GET /linhas or /linhas.json
  def index
    @linhas = Linha.all
  end

  # GET /linhas/1 or /linhas/1.json
  def show
  end

  # GET /linhas/new
  def new
    @linha = Linha.new
  end

  # GET /linhas/1/edit
  def edit
  end

  # POST /linhas or /linhas.json
  def create
    @linha = Linha.new(linha_params)
    params[:linha][:terminals].each do |t| 
      @terminal = Terminal.find_by(id: t)
      if @terminal
        @linha.terminals << @terminal
      end
    end
    respond_to do |format|
      if @linha.save
        format.html { redirect_to linha_url(@linha), notice: "Linha was successfully created." }
        format.json { render :show, status: :created, location: @linha }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @linha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linhas/1 or /linhas/1.json
  def update
    @linha.terminals.destroy_all
    params[:linha][:terminals].each do |t| 
      @terminal = Terminal.find_by(id: t)
      if @terminal
        @linha.terminals << @terminal
      end
    end
    respond_to do |format|
      if @linha.update(linha_params)
        format.html { redirect_to linha_url(@linha), notice: "Linha was successfully updated." }
        format.json { render :show, status: :ok, location: @linha }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @linha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linhas/1 or /linhas/1.json
  def destroy
    @linha.destroy

    respond_to do |format|
      format.html { redirect_to linhas_url, notice: "Linha was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linha
      @linha = Linha.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linha_params
      params.require(:linha).permit(:nome, :codigo, :tipo_id)
    end
end
