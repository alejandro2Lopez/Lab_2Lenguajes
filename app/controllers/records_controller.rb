class RecordsController < ApplicationController
  before_action :set_record, only: %i[show edit update destroy]
  before_action :set_comedian
  before_action :set_contract
  def index
    @records = Record.all
  end

  def show; end

  def new
    @record = Record.new
  end

  def edit; end

  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to record_url(@record), notice: 'Record was successfully created.'

    else
      render :new, status: :unprocessable_entity

    end
  end

  def update
    if @record.update(record_params)
      redirect_to record_url(@record), notice: 'Record was successfully updated.'

    else
      render :edit, status: :unprocessable_entity

    end
  end

  def destroy
    @record.destroy

    redirect_to records_url, notice: 'Record was successfully destroyed.'
  end

  private

  def set_record
    @record = Record.find(params[:id])
  end

  def set_comedian
    @comedians = Comedian.all.map do |comedian|
      ["#{comedian.first_name} #{comedian.last_name} -#{comedian.id_number} ", comedian.id]
    end
  end

  def set_contract
    @contracts = Contract.all.map do |contract|
      [contract.locate, contract.id]
    end
  end

  def record_params
    params.require(:record).permit(:version, :contract_id, :comedian_id)
  end
end
