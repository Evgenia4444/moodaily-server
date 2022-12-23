class ElementsController < ApplicationController
  def index
    if params.has_key?(:category)
      element = Element.find_by_name(params[:category])
      posts = Post.where(element: @element)
    else
      elements = Element.all
    end
  end

  def create
    element = Element.create(element_param)
    render json: element
  end

  def update
    element.update(element_param)
    render json: element
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    element.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_element
      element = Element.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def element_params
      params.require(:element).permit(:name, :imageLink)
    end
end
