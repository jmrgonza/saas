class MoviesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    
    if params[:ratings]
      session[:ratings] = params[:ratings]
    else
      params[:ratings] = session[:ratings]
    end
    params[:order] ||= session[:order]
    session[:order] = params[:order]

    
    if params[:ratings]
      @all_ratings = Hash[Movie.ratings.collect { |v| [v, params[:ratings].has_key?(v)] }]
      @movies = Movie.find :all, :conditions =>["rating IN (?)", params[:ratings].keys], :order => params[:order]
    else
      @all_ratings = Hash[Movie.ratings.collect { |v| [v, true] }]
      @movies = Movie.all :order => params[:order]
    end
    @class = Hash.new("")
    @class[params[:order]] = "hilite"
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
