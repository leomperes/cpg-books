class Author < ApplicationRecord
  module Nameable
    extend ActiveSupport::Concern

    module InstanceMethods
      # Join first and last names of the Author.
      def name
        read_attribute('name') || "#{first_name} #{last_name}"
      end
    end

    def self.included(receiver)
      receiver.send :include, InstanceMethods
    end
  end
end
