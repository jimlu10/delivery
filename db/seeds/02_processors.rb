puts '========== CREATING PROCESSORS =========='

processors = [
  {
    id: 1,
    key: 'fedex_direct',
    name: 'Fedex Company',
    type: 'Processor::FedexDirect'
  }
]

Processor.create!(processors)
