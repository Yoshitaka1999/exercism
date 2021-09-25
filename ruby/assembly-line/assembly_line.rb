class AssemblyLine
  CAR_MAKE_SPEED = [
    {
      speed: [1, 2, 3, 4],
      success_rate: 1 
    },
    {
      speed: [5, 6, 7, 8],
      success_rate: 0.9
    },
    {
      speed: [9],
      success_rate: 0.8
    },
    {
      speed: [10],
      success_rate: 0.77
    }
  ]

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    CAR_MAKE_SPEED.find{|hash| hash[:speed].include?(@speed) }[:success_rate] * (221 * @speed)
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
