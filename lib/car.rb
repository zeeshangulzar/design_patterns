require 'observer'

class Car

  include Observable

  attr_reader :mileage, :service

  def initialize(mileage=0, service=3000)
    @mileage = mileage
    @service = service
    add_observer(Notifier.new)
  end

  def log(miles)
    @mileage = @mileage + miles
    changed
    notify_observers(self, miles)
  end
end
