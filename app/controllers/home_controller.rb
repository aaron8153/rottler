class HomeController < ApplicationController
  def index
    @work_orders = WorkOrder.all.includes(:technician, :location).order(:time, :technician_id)
    @technicians = []
    @work_orders.each do |wo|
      @technicians << {id: wo.technician.id, name: wo.technician.name, wo_duration_slots: 0, first_wo_found: false}
    end
    @technicians = @technicians.uniq
  end
end
