class HomeController < ApplicationController
  def index
    # @work_orders = WorkOrder.all.includes(:technician, :location).order(:time, :technician_id)
    @technicians = Technician.all.includes(:work_orders, :locations).order(:technician_id, :time)
    @techs = {}

    @technicians.each do |t|
      @techs[t.id] = {:wo_duration_slots => 0, :time_since_previous => 0, :wo_id => nil, :first_wo_found => false}
    end
  end
end
