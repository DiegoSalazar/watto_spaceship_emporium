namespace :import do
  desc "Import products into database"
  task :products, [:url] => [:environment] do |task, args|
    require 'open-uri'
    uri = URI.parse args[:url]

    puts "Reading products from #{uri}"
    data = open(uri).read
    parsed = JSON.parse data

    products = parsed["products"].each_with_object([]) do |product, acc|
      acc << {
        name: product['name'],
        manufacturer: product['manufacturer'],
        product_class: product['class'],
        tech_specs: product['techspecs']
      }
    end

    puts "Will import #{products.size} products..."
    Product.create products

    puts "\aDone."
  end
end