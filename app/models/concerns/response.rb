
class Response
  RESPONSE_CODES = Delivery::RESPONSE_CODES
  BASE_CODE_NAME = 'delivery_code'.freeze

  attr_reader :code, :message
  attr_accessor :status, :request, :response

  def initialize(status: nil, processor_name: BASE_CODE_NAME, code: nil)
    @status = status
    @code = code
    @processor_name = processor_name
    assign_codes!
    assign_status! unless status

    yield self if block_given?
  end

  def success?
    status == :success
  end

  def failed?
    status == :failed
  end

  def jsonify
    { code: code, message: message }.to_json
  end

  private

  attr_accessor :processor_name

  def assign_codes!
    processor_code = if BASE_CODE_NAME == processor_name && code
                       code
                     else
                       find_code_value(processor_name, code)
                     end

    @code = find_base_code(processor_code)
    @message = RESPONSE_CODES[BASE_CODE_NAME][@code]
  end

  def find_base_code(processor_code)
    RESPONSE_CODES[BASE_CODE_NAME][processor_code] ? processor_code : 'P99'
  end

  def find_code_value(type, value)
    if code_exists?(type, value)
      RESPONSE_CODES.dig(type, value)
    else
      'D99'
    end
  end

  def code_exists?(type, value)
    RESPONSE_CODES.dig(type, value).present?
  end

  def assign_status!
    return :success if 'D0' == code

    status = RESPONSE_CODES['soft_codes'].keys.include?(code) ? :error_soft : :error_hard
  end
end

