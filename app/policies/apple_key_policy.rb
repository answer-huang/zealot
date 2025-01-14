# frozen_string_literal: true

class AppleKeyPolicy < ApplicationPolicy

  def sync_devices?
    manage?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
