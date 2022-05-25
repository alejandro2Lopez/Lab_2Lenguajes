module ComediansHelper
  def meth_level
    Comedian.levels.keys.map do |level|
      [t("activerecord.attributes.level.levels.#{level}"), level]
    end
  end
end
