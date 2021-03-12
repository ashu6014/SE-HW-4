require 'rails_helper'

describe MoviesController, :type => :controller do

    describe "similar" do
       context "When specified movie has a director" do
           it "should find movies with the same director" do

           @movie_id = "9999"
           @movie = double('pulp fiction', :director => 'Tarantino')

           expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
           expect(@movie).to receive(:same_directors)

           get :similar,  :id => @movie_id

           expect(response).to render_template(:similar)

            end

       end

       
    end

end 