class CourierRepository
  def find_couriers
    Courier.all
  end

  def serializer
    CourierBlueprint
  end
end
