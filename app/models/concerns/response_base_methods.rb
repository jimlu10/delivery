module ResponseBaseMethods
  def success_response(*args)
    options = args.extract_options!
    options[:status] = :success
    Response.new(**options) do |r|
      yield r if block_given?
    end
  end

  def failed_response(*args)
    options = args.extract_options!
    options[:status] = :failed
    Response.new(**options) do |r|
      yield r if block_given?
    end
  end
end
