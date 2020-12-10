def random_address
  ["1 Rue Cremieux 75012 Paris", "5 Avenue Montaigne 75008 Paris",  "40 Avenue des Champs Elysées 75008", "1 Avenue de la Republique 75011 Paris", "56 rue la Boetie 75008 Paris", "8 Passage Desgrais 75019 Paris", "14 Rue du Départ 75014 Paris", "10 Rue des Petites Ecuries 75010 Paris", "9 Rue de la Pierre Levée 75011 Paris", "56 Rue de la Fontaine au Roi 75011 Paris", "116 Avenue Kleber 75016 Paris", "12 Rue Gasnier Guy 75020 Paris", "70 Rue de Belleville 75020 Paris", "6 Place Leon Blum 75011 Paris", "13 Avenue de France 75013 Paris", "12 Rue de Cotte 75012 Paris", "48 Rue Croix des Petits Champs 75001 Paris", "50 Rue Lecourbe 75015 Paris", "5 Rue Linois 75015 Paris", "30 Rue Didot 75014 Paris", "2 Place d'Italie 75013 Paris"].sample
end

puts "Destroying users"
User.destroy_all

puts "Creating manager"
manager = User.new(
  email: "manager@manager.com",
  password: "password",
  first_name: "Manager",
  last_name: "Reganam",
  manager: true,
  fixer: false,
  customer: false,
)
manager.save!
puts "Manager is born !"

puts "Creating fixer"
fixer = User.new(
  email: "fixer@fixer.com",
  password: "password",
  first_name: "fixer",
  last_name: "Rexif",
  manager: false,
  fixer: true,
  customer: false,
)
fixer.save!
puts "fixer is born !"

puts "Creating customer"
customer = User.new(
  email: "customer@customer.com",
  password: "password",
  first_name: "customer",
  last_name: "Remotsuc",
  manager: false,
  fixer: false,
  customer: true,
)
customer.save!
puts "Customer is born !"