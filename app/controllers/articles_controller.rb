class ArticlesController <ApplicationController
    def show
        #params[:id] takes the id from url/req
        #to make the article variable available to entire project we make it as an instance variable by using @
        #byebug pauses the server
        # byebug
        # comment byebug once debug is done
        @article=Article.find(params[:id])
    end    
     
    def index
        @articles=Article.all
    end  
    # def create
    #     # render plain: params[:article]
    #     # refer notes of tutorial
    #     # make article an instance variable
    #     @article=Article.new(params.require(:article).permit(:title,:description))
    #     #render plain: @article.inspect
    #     #to get more details we can use @article.inspect
    #     #render shows back the content to the screen instead one can use save 
    #     @article.save
    #     redirect_to @article
    # end
    def new

    end
  
    def create
      @article = Article.new(params.require(:article).permit(:title, :description))
    #   @article.save
    #   redirect_to @article
    @article.save
    redirect_to @article
    end
   
end    