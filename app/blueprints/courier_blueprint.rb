class CourierBlueprint < Blueprinter::Base
  identifier :key
  fields :name, :tracking_number_digits
end
