
require 'green_shoes'

Shoes.app do
  stack(margin: 10) do
    @edit_box = edit_box do |e|
      @copy_box.text = @edit_box.text
    end

    @copy_box = para "What you type in the edit box goes here"

    # Encrypt the message in the box
    @button = button("Encrypt") do
      ob_bytes = @copy_box.text.each_byte.map {
        |b|
        b + 1
      }
      @copy_box.text = ob_bytes.map {
        |b|
        b.chr
      }.join
    end

    # Decrypt the encrypted message
    @button = button("Decrypt") do
      ob_bytes = @copy_box.text.each_byte.map {
        |b|
        b - 1
      }
      @copy_box.text = ob_bytes.map {
        |b|
        b.chr
      }.join
    end
  end
end
