
class Gear
  attr_reader :chain_ring, :cog, :rim, :tire

  def initialize(chain_ring, cog, rim, tire)
    @chain_ring = chain_ring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chain_ring / cog.to_f
  end

  def gear_inches
    # tire goes around the rim twice (for diameter)
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(52, 11, 24, 1.25).gear_inches
