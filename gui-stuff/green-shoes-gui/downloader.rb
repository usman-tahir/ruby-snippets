
require 'green_shoes'
require 'open-uri'

Shoes.app(widtH: 350) do
  title "Downloader"
  stack(margin: 10) do

    # User input
    flow do
      @url_line = edit_line
      @download_button = button("Download") do
        url = @url_line.text
        uri = URI.parse(url)
        filename = File.basename(uri.path)

        Thread.new do
          open(filename, 'wb') do |f|
            f.write(open(url,
              :content_length_proc => @content_length_proc,
              :progress_proc => @progress_proc
            ).read)
          end
        end
      end
    end

    # Labels
    caption "File size:"
    @expected_bytes = para ""

    caption "Downloaded:"
    @current_bytes = para ""

    caption "Progress:"
    @progress_bar = progress left: 10, top: 300

    @content_length_proc = lambda do |content_length|
      @content_length = content_length
      @expected_bytes.text = content_length
    end

    @progress_proc = lambda do |bytes|
      @current_bytes.text = bytes
      @progress_bar.fraction = bytes / @content_length.round(1)
    end
  end
end
