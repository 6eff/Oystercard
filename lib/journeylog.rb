require_relative 'journey'
class JourneyLog
attr_reader :journey_class
  def initialize
    @journey_class = Journey.new
  end

  def start entry_station
    @journey_class.start_journey entry_station
  end


  private
  def current_journey
  @journey_class.journey
  end
end
