class Book < ApplicationRecord
  module Authorable
    extend ActiveSupport::Concern

    module InstanceMethods
      # Get authors names (first and last names).
      def authors_names
        authors.map(&:name).join(', ')
      end
    end

    def self.included(receiver)
      receiver.send :include, InstanceMethods
    end
  end
end
