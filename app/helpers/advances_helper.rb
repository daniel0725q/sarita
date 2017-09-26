module AdvancesHelper
  def plans_for_select
    OperativePlan.all.collect { |m| [m.name, m.id] }
  end
end
