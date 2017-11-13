module RubyRedtail
  class Contact
    class Family
      attr_reader :contact_id

      def initialize(contact_id, api_hash)
        @contact_id = contact_id
        @api_hash = api_hash
      end

      def fetch
        RubyRedtail::Query.run("contacts/#{contact_id}/family", @api_hash, "GET")
      end

      def create(params)
        update(0, params)
      end

      def update(family_id, params)
        RubyRedtail::Query.run("contacts/#{contact_id}/family/#{family_id}", @api_hash, 'PUT', params)
      end
    end
  end
end