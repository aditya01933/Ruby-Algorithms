# The problem is to print all the possible paths from top left to bottom right
# of a mXn matrix with the constraints that from each cell you can either move
# only to right or down.
# Sample input:
# mat = [
#   [1, 2, 3]
#   [4, 5, 6]
# ]
class MatrixParser
  def self.traverse(mat, i=0, j=0)
    puts mat[i][j]
    
    if mat[i][j+1]
      puts mat[i][j+1]
      if mat[j+1] && mat[j+1][i+1]
        MatrixParser.traverse(mat, j+1, i+1)
      end
    end

    if mat[j+1] && mat[j+1][i]
      puts mat[j+1][i]
      if mat[j+1] && mat[j+1][i+1]
        MatrixParser.traverse(mat, j+1, i+1)
      end
    end
  end
end
