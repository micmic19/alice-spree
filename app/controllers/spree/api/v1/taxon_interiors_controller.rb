module Spree
  module Api
    module V1
      class TaxonInteriorsController < Spree::Api::BaseController

        def index
		  @taxon_interiors = scope.interiors.accessible_by(current_ability, :read)
          respond_with(@taxon_interiors)
        end

        def show
          @taxon_interior = TaxonInterior.accessible_by(current_ability, :read).find(params[:id])
          respond_with(@taxon_interior)
        end

        def new; end

        def create
          authorize! :create, TaxonInterior
          @taxon_interior = scope.interiors.new(product_file_params)
          if @taxon_interior.save
            respond_with(@taxon_interior, status: 201, default_template: :show)
          else
            invalid_resource!(@taxon_interior)
          end
        end

        def update
          @taxon_interior = TaxonInterior.accessible_by(current_ability, :update).find(params[:id])
          if @taxon_interior.update_attributes(product_file_params)
            respond_with(@taxon_interior, default_template: :show)
          else
            invalid_resource!(@taxon_interior)
          end
        end

        def destroy
          @taxon_interior = scope.interiors.accessible_by(current_ability, :destroy).find(params[:id])
          @taxon_interior.destroy
          respond_with(@taxon_interior, status: 204)
        end

        private

        def permitted_product_file_attributes
          [:alt, :attachment, :position, :viewable_type, :viewable_id]
        end

        def product_file_params
		  #TODO :image -> image[attachment] in multipart/form-data and update param in json {"image":...}
          params.require(:image).permit(permitted_product_file_attributes)
        end

        def scope
          if params[:taxon_id]
			Spree::Taxon.find(params[:taxon_id])
          end
        end
      end
    end
  end
end
