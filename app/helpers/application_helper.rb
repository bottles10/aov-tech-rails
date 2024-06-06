module ApplicationHelper

    def country_codes
        ISO3166::Country.all.map { |country| ["#{country.alpha2} (+#{country.country_code})", country.country_code] }
    end
end
