require 'singleton'

class AppConfig
  include Singleton

  attr_accessor :data

  def initialize
    @data = {}
  end

  def add(key, value)
    @data[key] = value
  end

  def version
    '1.1.0'
  end
end

#------------How to use-------------
# config = AppConfig.instance #new is a private method
# config.add(:enabled, true)
# config.add(:user, 'test')
# config.add(:password: 'whatever')
# config.data
