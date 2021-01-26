class ApplicationController < ActionController::API
  def success_response(serializer:, data:, **serializer_params)
    default_render_response(serializer: serializer, data: data, status: :ok, **serializer_params)
  end

  def default_render_response(serializer:, data:, status:, **serializer_params)
    render json: serializer.render(data, serializer_params), status: status
  end
end
