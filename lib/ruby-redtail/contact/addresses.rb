module RubyRedtail
  class Contact
    class Addresses
      attr_reader :contact_id
      def initialize(contact_id, api_hash)
        @contact_id = contact_id
        @api_hash = api_hash
      end

      # Fetch Address By Contact Id
      def fetch
        RubyRedtail::Query.run("contacts/#{contact_id}/addresses", @api_hash, "GET")
      end

      # Update Address
      def update(address_id, params)
        params = params.merge('ClientID' => contact_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/addresses/#{address_id}", @api_hash, 'PUT', params)
      end

      # Create New Address
      def create(params)
        update(0, params)
      end

      # Delete Address
      def delete(address_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/addresses/#{address_id}", @api_hash, 'DELETE')
      end

      # Fetch Phones By Contact Id
      def phones
        RubyRedtail::Query.run("contacts/#{contact_id}/phones", @api_hash, "GET")
      end

      # Update Phone
      def update_phone(phone_id, params)
        params = params.merge('ClientID' => contact_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/phones/#{phone_id}", @api_hash, 'PUT', params)
      end

      # Create New Phone
      def create_phone(params)
        update_phone(0, params)
      end

      # Delete Phone
      def delete_phone(phone_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/phones/#{phone_id}", @api_hash, 'DELETE')
      end

      # Fetch Internet Addresses By Contact Id
      def internet_addresses
        RubyRedtail::Query.run("contacts/#{contact_id}/internets", @api_hash, "GET")
      end

      # Update Internet Address
      def update_internet_address(internet_id, params)
        params = params.merge('ClientID' => contact_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/internets/#{internet_id}", @api_hash, 'PUT', params)
      end

      # Create New Internet Address
      def create_internet_address(params)
        update_internet_address(0, params)
      end

      # Delete Internet Address
      def delete_internet_address(internet_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/internets/#{internet_id}", @api_hash, 'DELETE')
      end
    end
  end
end