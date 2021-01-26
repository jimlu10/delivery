class CouriersController < ApplicationController
  def index
    success_response serializer: repo.serializer, data: repo.find_couriers, root: :couriers
  end

  private

  def repo
    @courier_repository ||= CourierRepository.new
  end
end
