class WantedsController < ApplicationController
  def find
	@wanted=Culprit.where("status='wanted'")
  end
end