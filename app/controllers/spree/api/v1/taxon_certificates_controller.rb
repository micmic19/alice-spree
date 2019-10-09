module Spree
  module Api
    module V1
      class TaxonCertificatesController < Spree::Api::BaseController

        helper ::SpreeApiV1TaxonCertificatesHelper

        def index
		  @taxon_certificates = scope.certificates.accessible_by(current_ability, :read)
          respond_with(@taxon_certificates)
        end

        def show
          @taxon_certificate = TaxonCertificate.accessible_by(current_ability, :read).find(params[:id])
          respond_with(@taxon_certificate)
        end

        def new; end

        def create
          authorize! :create, TaxonCertificate
          @taxon_certificate = scope.certificates.new(taxon_certificate_params)
          if @taxon_certificate.save
            respond_with(@taxon_certificate, status: 201, default_template: :show)
          else
            invalid_resource!(@taxon_certificate)
          end
        end

        def update
          @taxon_certificate = TaxonCertificate.accessible_by(current_ability, :update).find(params[:id])
          if @taxon_certificate.update_attributes(taxon_certificate_params)
            respond_with(@taxon_certificate, default_template: :show)
          else
            invalid_resource!(@taxon_certificate)
          end
        end

        def destroy
          @taxon_certificate = scope.certificates.accessible_by(current_ability, :destroy).find(params[:id])
          @taxon_certificate.destroy
          respond_with(@taxon_certificate, status: 204)
        end

        private

        def permitted_taxon_certificate_attributes
          [:alt, :attachment, :position, :viewable_type, :viewable_id]
        end

        def taxon_certificate_params
		  #TODO :image -> image[attachment] in multipart/form-data and update param in json {"image":...}
          params.require(:taxon_certificate).permit(permitted_taxon_certificate_attributes)
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
