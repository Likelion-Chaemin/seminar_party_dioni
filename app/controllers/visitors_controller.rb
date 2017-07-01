class VisitorsController < ApplicationController

  def index
    @visitors = Visitor.all.reverse
    @sum = Visitor.all.sum('fun')
    @percent = @sum*100/200
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)
    if @visitor.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end


  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    if @visitor.update(visitor_params)
      redirect_to root_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy
    redirect_to root_path
  end

  def visitor_params
    params.require(:visitor).permit(:name, :fun)
  end

end
