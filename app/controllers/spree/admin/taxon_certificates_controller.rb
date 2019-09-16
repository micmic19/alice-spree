module Spree
  module Admin
    class TaxonCertificatesController < ResourceController
      before_action :load_edit_data, except: :index
      before_action :load_index_data, only: :index

      create.before :set_viewable
      update.before :set_viewable
      create.fails :set_flash_error_messages_from_object

      private

      def location_after_destroy
        admin_taxonomy_taxon_taxon_certificates_url(@taxon)
      end

      def location_after_save
		#edit_admin_taxonomy_taxon_url(@taxon)
        admin_taxonomy_taxon_taxon_certificates_url(@taxon)
      end

      def load_index_data
        @taxon = Taxon.friendly.find(params[:taxon_id])
      end

      def load_edit_data
        @taxon = Taxon.friendly.find(params[:taxon_id])
		@taxonomy = Spree::Taxonomy.find(@taxon.taxonomy_id)
      end

      def set_viewable
        @taxon_certificate.viewable_type = 'Spree::Taxon'
        @taxon_certificate.viewable_id = @taxon.id
      end

      def variant_index_includes
        [
          variant_product_files: [viewable: { option_values: :option_type }]
        ]
      end

      def variant_edit_includes
        [
          variants_including_master: { option_values: :option_type, certificates: :viewable }
        ]
      end

      def set_flash_error_messages_from_object
        flash[:error] = @object.errors.full_messages.join(', ')
      end

    end
  end
end
