Country.destroy_all
Source.destroy_all
Language.destroy_all
Person.destroy_all

Country.create(
  name: 'United States',
  code: 'US'
)

Source.create(
  name: 'Wikipedia',
  base_url: 'wikipedia.org',
  status: 1
)

Source.create(
  name: 'Brittanica',
  base_url: 'britannica.com',
  status: 0
)

Language.create(
  value: 'en',
  name: 'English (American)',
  active: true
)

Language.create(
  value: 'fr',
  name: 'French',
  active: true
)

Language.create(
  value: 'de',
  name: 'German',
  active: true
)

Language.create(
  value: 'es',
  name: 'Spanish',
  active: true
)

Language.create(
  value: 'it',
  name: 'Italian',
  active: true
)

Person.create(
  first_name: 'Wilson',
  second_name: 'Lumpkin',
  country: Country.find_by(code: 'US')
)

Person.create(
  first_name: 'Robert',
  second_name: 'Toombs',
  country: Country.find_by(code: 'US')
)

Person.create(
  first_name: 'Saxby',
  second_name: 'Chambliss',
  country: Country.find_by(code: 'US')
)

Person.create(
  first_name: 'Wyche',
  second_name: 'Fowler',
  country: Country.find_by(code: 'US')
)