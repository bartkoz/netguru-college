class QuotesController < ApplicationController
  def index
    @quotes = Quote.paginate(:page => params[:page])
  end
  def create
    quote = Quote.new(quote_params)
    if quote.save
      flash[:notice] = 'Quote saved successfully'
      redirect_to root_path
    else
       flash[:notice] = 'Something went wrong'
      redirect_to new_quote_path
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:body)
  end
end
