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
        @article=Article.new
    end
    def edit
        #byebug
        @article=Article.find(params[:id])

    end   
    def create
      @article = Article.new(params.require(:article).permit(:title, :description))
    #   @article.save
    #   redirect_to @article
    if @article.save
        flash[:notice] = "Article was created successfully."
    redirect_to @article
    else
        render 'new'
    end
    end
   def update
    @article=Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
        flash[:notice]="Article updated Successfully"
        redirect_to @article
    else
        render 'edit'
    end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
      end
end    