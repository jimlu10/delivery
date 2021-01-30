class GuideBlueprint < Blueprinter::Base
  identifier :id
  fields :tracking_number, :status
  field :courier do |guide, options|
    guide.courier.key
  end
end
