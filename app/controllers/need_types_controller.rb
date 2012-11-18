class NeedTypesController < ApplcationController

  def index
    @needs = NeedType.all
  end

  def show
    @need = NeedType.find(params[:id])
  end

end