module RubyRedtail
  class Contact
    class Accounts
      attr_reader :contact_id

      def initialize(contact_id, api_hash)
        @contact_id = contact_id
        @api_hash = api_hash
      end

      def fetch
        RubyRedtail::Query.run("contacts/#{contact_id}/accounts", @api_hash, "GET")
      end

      def create(params)
        update(@contact_id, 0, params)
      end

      def update(account_id, params)
        RubyRedtail::Query.run("contacts/#{contact_id}/accounts/#{account_id}", @api_hash, 'PUT', params)
      end

      def assets(account_id)
        RubyRedtail::Query.run("contacts/#{contact_id}/accounts/#{account_id}/assets", @api_hash, "GET")
      end

      # Fetch Assets and Liabilities
      def assets_and_liabilities
        RubyRedtail::Query.run("contacts/#{contact_id}/assets-liabilities", @api_hash, "GET")
      end
    end
  end
end