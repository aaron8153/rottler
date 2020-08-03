require 'csv'

desc 'Loads location, work order, and technician data'

task :load_csv => :environment do
  load_locations
  load_technicians
  load_work_orders
end


private

def load_locations
  items = []
  now = Time.now
  CSV.foreach(Dir.pwd + '/lib/tasks/locations.csv', headers: true, :header_converters => :symbol) do |row|
    r = row.to_hash
    items << r.merge( { :created_at=>now, :updated_at=>now } )
    end
  Location.upsert_all items
end

def load_technicians
  items = []
  now = Time.now
  CSV.foreach(Dir.pwd + '/lib/tasks/technicians.csv', headers: true, :header_converters => :symbol) do |row|
    r = row.to_hash
    items << r.merge( { :created_at=>now, :updated_at=>now } )
  end
  Technician.upsert_all(items)
end

def load_work_orders
  items = []
  now = Time.now
  CSV.foreach(Dir.pwd + '/lib/tasks/work_orders.csv', headers: true, :header_converters => :symbol) do |row|
    r = row.to_hash
    items << r.merge( { :created_at=>now, :updated_at=>now } )
  end
  puts items.inspect
  WorkOrder.upsert_all(items)
end