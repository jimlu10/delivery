puts '========== CREATING CONFIGURATIONS =========='

configurations = [
  {
    id: 1,
    courier_id: 1,
    create_processor_id: 1,
    tracking_processor_id: 1
  }
]

Configuration.create!(configurations)

courier_fedex = Courier.find_by(key: 'fedex')
courier_fedex.configuration = Configuration.find(1)
courier_fedex.save

