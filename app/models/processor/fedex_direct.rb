class Processor
  class FedexDirect < self
    include ResponseBaseMethods

    def tracking(guide:)
      success_response(code: 'D0')
    end
  end
end
