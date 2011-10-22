class WishesController < ApplicationController
  def index
    @wish = Wish.new
    @time = Time.now
  end
  

  def show
    @wish = Wish.find(params[:id])
  end
  
  def new
    @wish = Wish.new
  end
  
  def create
    @wish = Wish.new(params[:wish])
    respond_to do |format|
         if @post.save
           format.html { redirect_to @post, :notice => 'Wish was successfully created.' }
           format.json { render :json => @post, :status => :created, :location => @post }
         else
           format.html { render :action => "new" }
           format.json { render :json => @post.errors, :status => :unprocessable_entity }
         end
      end
  end

  def edit
    
  end

end
