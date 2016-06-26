dealership = {
  jeep_class: {
    model_name: 'Wrangler',
    availability_info: {
      total_vehicles: 10,
      total_unsold: 5
    },
    options: [
      "40 inch mud tires",
      "lift kit",
      "all skid plates",
      "stinger bumper with winch"
    ]
  },
  chevrolet_class: {
    model_name: 'Tahoe',
    availability_info: {
      total_vehicles: 5,
      total_unsold: 5
    },
    options: [
      "cd player",
      "leather seats"
    ]
  },
  ford_class: {
    model_name: 'F350',
    availability_info: {
      total_vehicles: 3,
      total_unsold: 1
    },
    options: [
      "6.7L Power Stroke V8 Turbo Diesel",
      "trailer tow package"
    ]
  }
}

p dealership[:chevrolet_class][:options]
p dealership[:jeep_class][:options][3]
p dealership[:ford_class][:model_name]
p dealership[:jeep_class][:availability_info]
