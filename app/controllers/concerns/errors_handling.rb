module ErrorsHandling
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |exception|
      result = exception.message.match(/Couldn't find (\w+)/)
      rescue_active_record_not_found(result)
    end
  end

  def render_error(error, *args)
    params = args.extract_options!

    output = {}
    output[:code] = params[:code] if params[:code].present?
    output[:message] = params[:message] if params[:message].present?
    output[:message] ||= error.to_s.humanize

    render json: output.to_json, status: error
  end

  def rescue_active_record_not_found(result)
    render_error(:not_found, code: 'D404', message: "Couldn't find #{result[1].underscore.humanize.downcase}")
  end
end
