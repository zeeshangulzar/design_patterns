class Notifier

  def update(car, miles)
    puts "The car has completed #{miles} miles now care mileage is #{car.mileage} miles"
    puts "The car needs a service" if car.mileage >= car.service
  end

end
