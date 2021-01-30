class GuidesController < ApplicationController
  before_action :current_courier, only: :track

  def track
    track_response, guide = repo.track(track_params, current_courier)

    if track_response.success?
      success_response serializer: repo.serializer, data: guide
    end
  end

  private

  def repo
    @guides_repository ||= GuideRepository.new
  end

  def track_params
    params.require(:guide).permit(:tracking_number, :courier)
  end

  def current_courier
    @current_courier ||= Courier.find_by!(key: track_params[:courier])
  end
end
