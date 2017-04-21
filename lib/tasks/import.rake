namespace :import do
  desc "Destroy all spaceships"
  task(clear: :environment) { Product.destroy_all }

  desc "Import products into database"
  task :products, [:url] => [:environment] do |task, args|
    require 'open-uri'
    uri = URI.parse args[:url] rescue puts 'missing URL' and return

    puts "Reading products from #{uri}"
    data = open(uri).read
    parsed = JSON.parse data

    products = parsed["products"].each_with_object([]) do |product, acc|
      acc << {
        name: product['name'],
        manufacturer: product['manufacturer'],
        product_class: product['class'],
        tech_specs: product['techspecs'],
        images_attributes: [{ image: get_image(product['name']) }]
      }
    end

    puts "Will import #{products.size} products..."
    Product.create products
    puts "\aDone."
  end

  def get_image(name)
    File.open "#{image_path(name)}.jpg", 'rb'
  rescue Errno::ENOENT => e
    File.open "#{image_path(name)}.png", 'rb'
  end

  def image_path(name)
    File.join File.expand_path(Rails.root), "public/images/stock/#{name}"
  end
end
