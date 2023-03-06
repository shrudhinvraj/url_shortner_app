module UrlsHelper
    def sanitize_url(url)
        url.original_url.strip!
        sanitize_url = url.original_url.downcase.gsub(/(https?:\/\/)|(www\.)/,"")
        "http://#{sanitize_url}"
    end
end
