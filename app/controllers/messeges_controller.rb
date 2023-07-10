class MessegesController < ApplicationController
  before_action :set_messege, only: %i[ show edit update destroy ]

  # GET /messeges or /messeges.json
  def index
    @greeting = Messege.order('RANDOM()').first
    render json: { message: @greeting.message }
  end

  # GET /messeges/1 or /messeges/1.json
  def show
  end

  # GET /messeges/new
  def new
    @messege = Messege.new
  end

  # GET /messeges/1/edit
  def edit
  end

  # POST /messeges or /messeges.json
  def create
    @messege = Messege.new(messege_params)

    respond_to do |format|
      if @messege.save
        format.html { redirect_to messege_url(@messege), notice: "Messege was successfully created." }
        format.json { render :show, status: :created, location: @messege }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @messege.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messeges/1 or /messeges/1.json
  def update
    respond_to do |format|
      if @messege.update(messege_params)
        format.html { redirect_to messege_url(@messege), notice: "Messege was successfully updated." }
        format.json { render :show, status: :ok, location: @messege }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @messege.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messeges/1 or /messeges/1.json
  def destroy
    @messege.destroy

    respond_to do |format|
      format.html { redirect_to messeges_url, notice: "Messege was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messege
      @messege = Messege.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def messege_params
      params.require(:messege).permit(:message)
    end
end
