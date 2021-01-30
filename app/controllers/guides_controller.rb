class GuidesController < ApplicationController
  def track
    track_response = repo.track(track_params)

    success_response serializer: repo.serializer, data: track_response
  end

  private

  def repo
    @guides_repository ||= GuideRepository.new
  end

  def track_params
    params.require(:guide).permit(:tracking_number, :courier)
  end
end
