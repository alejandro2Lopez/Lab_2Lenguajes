class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :set_comedian
  def index
    @events = Event.all
  end

  def show; end

  def new
    @event = Event.new
  end

  def edit; end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_url(@event), notice: 'Event was successfully created.'

    else
      render :new, status: :unprocessable_entity

    end
  end

  def update
    if @event.update(event_params)
      redirect_to event_url(@event), notice: 'Event was successfully updated.'

    else
      render :edit, status: :unprocessable_entity

    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_comedian
    @comedians = Comedian.all.map do |comedian|
      ["#{comedian.first_name} #{comedian.last_name} -#{comedian.id_number} ", comedian.id]
    end
  end

  def event_params
    params.require(:event).permit(:typpe, :comedian_id)
  end
end
