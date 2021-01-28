puts '========== CREATING COURIERS =========='
couriers = [
  {
    id: 1,
    key: 'fedex',
    name: 'Fedex Company',
    tracking_number_digits: '10'
  }
]

Courier.create!(couriers)
