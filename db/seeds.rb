stacey = Bro.create name: 'Stacey', age: 22
andrew = Bro.create name: 'Andrew', age: 25
aaliyah = Bro.create name: 'Aaliyah', age: 30
xavier = Bro.create name: 'Xavier', age: 28

lime = Scooter.create brand: 'Lime'
bird = Scooter.create brand: 'Bird'
spin = Scooter.create brand: 'Spin'
goat = Scooter.create brand: 'Goat'

ScooterBro.create(
  [
    { scooter: lime, bro: stacey },
    { scooter: bird, bro: stacey },
    { scooter: bird, bro: andrew },
    { scooter: spin, bro: andrew },
    { scooter: goat, bro: aaliyah },
    { scooter: goat, bro: xavier }
  ]
)
