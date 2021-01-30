class GuideRepository
  def track(params)
    Guide.create(tracking_number: params[:tracking_number], courier: Courier.first)
  end

  def serializer
    GuideBlueprint
  end
end
