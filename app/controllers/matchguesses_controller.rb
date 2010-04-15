class MatchguessesController < ApplicationController
  # GET /matchguesses
  # GET /matchguesses.xml
  def index
    @matchguesses = Matchguess.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matchguesses }
    end
  end

  # GET /matchguesses/1
  # GET /matchguesses/1.xml
  def show
    @matchguess = Matchguess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @matchguess }
    end
  end

  # GET /matchguesses/new
  # GET /matchguesses/new.xml
  def new
    @matchguess = Matchguess.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @matchguess }
    end
  end

  # GET /matchguesses/1/edit
  def edit
    @matchguess = Matchguess.find(params[:id])
  end

  # POST /matchguesses
  # POST /matchguesses.xml
  def create
    @matchguess = Matchguess.new(params[:matchguess])

    respond_to do |format|
      if @matchguess.save
        flash[:notice] = 'Matchguess was successfully created.'
        format.html { redirect_to(@matchguess) }
        format.xml  { render :xml => @matchguess, :status => :created, :location => @matchguess }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matchguess.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matchguesses/1
  # PUT /matchguesses/1.xml
  def update
    @matchguess = Matchguess.find(params[:id])

    respond_to do |format|
      if @matchguess.update_attributes(params[:matchguess])
        flash[:notice] = 'Matchguess was successfully updated.'
        format.html { redirect_to(@matchguess) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matchguess.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matchguesses/1
  # DELETE /matchguesses/1.xml
  def destroy
    @matchguess = Matchguess.find(params[:id])
    @matchguess.destroy

    respond_to do |format|
      format.html { redirect_to(matchguesses_url) }
      format.xml  { head :ok }
    end
  end
end
