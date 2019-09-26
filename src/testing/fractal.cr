require "stumpy_png"

module Fractals

  # Render test code in stumpy_png
  include StumpyPNG
  canvas = Canvas.new(256, 256)
  (0..255).each do |x|
    (0..255).each do |y|
      # RGBA.from_rgb_n(values, bit_depth) is an internal helper method
      # that creates an RGBA object from a rgb triplet with a given bit depth
      color = RGBA.from_rgb_n(x, y, 255, 8)
      canvas[x, y] = color
    end
  end
  StumpyPNG.write(canvas, "rainbow.png")

  # Define positions, min max, etc
  # Create classes for Mandelbrot and Julia
  # Render code in stumpy_png

end