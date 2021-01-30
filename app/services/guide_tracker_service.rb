class GuideTrackerService
  def initialize(tracking_number:, courier:)
    @tracking_number = tracking_number
    @courier = courier
  end

  def track!
    [courier.tracking_processor.tracking(guide: guide), guide]
  end

  private

  attr_accessor :tracking_number, :courier

  def guide
    @guide ||= Guide.find_or_create_by(tracking_number: tracking_number, courier: courier)
  end
end
