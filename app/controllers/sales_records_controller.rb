class SalesRecordsController < ApplicationController
  before_action :set_sales_record, only: %i[ show edit update destroy ]

  # GET /sales_records or /sales_records.json
  def index
    @sales_records = SalesRecord.all
  end

  # GET /sales_records/1 or /sales_records/1.json
  def show
  end

  # GET /sales_records/new
  def new
    @sales_record = SalesRecord.new
  end

  # GET /sales_records/1/edit
  def edit
  end

  # POST /sales_records or /sales_records.json
  def create
    @sales_record = SalesRecord.new(sales_record_params)

    respond_to do |format|
      if @sales_record.save
        format.html { redirect_to @sales_record, notice: "Sales record was successfully created." }
        format.json { render :show, status: :created, location: @sales_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sales_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_records/1 or /sales_records/1.json
  def update
    respond_to do |format|
      if @sales_record.update(sales_record_params)
        format.html { redirect_to @sales_record, notice: "Sales record was successfully updated." }
        format.json { render :show, status: :ok, location: @sales_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sales_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_records/1 or /sales_records/1.json
  def destroy
    @sales_record.destroy!

    respond_to do |format|
      format.html { redirect_to sales_records_path, status: :see_other, notice: "Sales record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_record
      @sales_record = SalesRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_record_params
      params.require(:sales_record).permit(:date, :amount, :category)
    end
end
