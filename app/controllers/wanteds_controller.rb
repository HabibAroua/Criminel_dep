class WantedsController < ApplicationController
  def find
	@wanted=Culprit.all
  end
end