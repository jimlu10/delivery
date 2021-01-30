class GuideRepository
  def track(params, courier)
    guide_tracker = GuideTrackerService.new(
      tracking_number: params[:tracking_number],
      courier: courier
    )

    response, guide = guide_tracker.track!
  end

  def serializer
    GuideBlueprint
  end
end
