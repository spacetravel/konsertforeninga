class KonserterController < ApplicationController
  def index
    @konserter = Concert.all
  end
end
