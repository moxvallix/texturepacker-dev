class BaseItemsController < ApplicationController
  before_action :set_base_item, only: %i[ show edit update destroy ]

  # GET /base_items or /base_items.json
  def index
    @base_items = BaseItem.all
  end

  # GET /base_items/1 or /base_items/1.json
  def show
  end

  # GET /base_items/new
  def new
    @base_item = BaseItem.new
  end

  # GET /base_items/1/edit
  def edit
  end

  # POST /base_items or /base_items.json
  def create
    @base_item = BaseItem.new(base_item_params)

    respond_to do |format|
      if @base_item.save
        format.html { redirect_to @base_item, notice: "Base item was successfully created." }
        format.json { render :show, status: :created, location: @base_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @base_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_items/1 or /base_items/1.json
  def update
    respond_to do |format|
      if @base_item.update(base_item_params)
        format.html { redirect_to @base_item, notice: "Base item was successfully updated." }
        format.json { render :show, status: :ok, location: @base_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @base_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_items/1 or /base_items/1.json
  def destroy
    @base_item.destroy
    respond_to do |format|
      format.html { redirect_to base_items_url, notice: "Base item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_item
      @base_item = BaseItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def base_item_params
      params.require(:base_item).permit(:model_type_id, :path)
    end
end
