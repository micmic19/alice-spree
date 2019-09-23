module Spree
  module Api
    module V1
      class TaxonCertificatesController < Spree::Api::BaseController

        def index
		  @taxon_сertificates = scope.certificates.accessible_by(current_ability, :read)
          respond_with(@taxon_сertificates)
        end

        def show
          @taxon_сertificate = TaxonCertificate.accessible_by(current_ability, :read).find(params[:id])
          respond_with(@taxon_сertificate)
        end

        def new; end

        def create
          authorize! :create, TaxonCertificate
          @taxon_сertificate = scope.certificates.new(product_file_params)
          if @taxon_сertificate.save
            respond_with(@taxon_сertificate, status: 201, default_template: :show)
          else
            invalid_resource!(@taxon_сertificate)
          end
        end

        def update
          @taxon_сertificate = TaxonCertificate.accessible_by(current_ability, :update).find(params[:id])
          if @taxon_сertificate.update_attributes(product_file_params)
            respond_with(@taxon_сertificate, default_template: :show)
          else
            invalid_resource!(@taxon_сertificate)
          end
        end

        def destroy
          @taxon_сertificate = scope.certificates.accessible_by(current_ability, :destroy).find(params[:id])
          @taxon_сertificate.destroy
          respond_with(@taxon_сertificate, status: 204)
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
