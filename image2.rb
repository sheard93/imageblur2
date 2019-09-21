class Image

  def initialize(array)
    @image = array
  end

  def output_image
    @image.each do |row|
      puts row.join("")
    end
  end

  def ones
    ones = []
    @image.each_with_index do |row, i|
      row.each_with_index do |x, row_i|
        if x == 1
          ones << [i, row_i]
        end 
      end
    end

    
    ones.each do |i, row_i|
      @image[i][row_i - 1] = 1 unless row_i == 0
      @image[i][row_i + 1] = 1 unless row_i == -1
      @image[i - 1][row_i] = 1 unless i == 0
      @image[i + 1][row_i] = 1 unless i == -1     
    end
    output_image
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
])

image.ones