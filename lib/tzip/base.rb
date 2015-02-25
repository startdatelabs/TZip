module TZip
  module ClassMethods
    def find_by_zipcode(zipcode)
      5.downto(1) do |i|
        zoning_key = zipcode.to_s[0,i]
        return MAPPING[zoning_key] if MAPPING.has_key?(zoning_key)
      end
      nil
    end
  end
end
