class CS::CsVersion
  VERSION = Gem::Version.new("0.0.0")

  def who_am_i?
    return "#{self.class} | CS[#{CS::VERSION}]"
  end

  def build
    return [who_am_i?, ITM::ItmObject.new.who_am_i?, DM::DmObject.new.who_am_i?]
  end
end