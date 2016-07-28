# module Telephone

  NUMMAP = {
    0 => [],
    1 => [],
    2 => ['A', 'B', 'C'],
    3 => ['D', 'E', 'F'],
    4 => ['G', 'H', 'I'],
    5 => ['J', 'K', 'L'],
    6 => ['M', 'N', 'O'],
    7 => ['P', 'Q', 'R', 'S'],
    8 => ['T', 'U', 'V'],
    9 => ['W', 'X', 'Y', 'Z']
  }

  def telephoneWords(num_arr)
    tree = []
    buildTree(num_arr, 0, tree)

    ft = ['', tree]
    numbers = []
    printTree(ft, '', numbers)
    return numbers
  end

    private

    def buildTree(tokens, level, tree)
      if level == tokens.length
        return
      end

      letters = NUMMAP[tokens[level]]
      letters.each do |letter|
        subtree = []
        buildTree(tokens, level+1, subtree)
        tree.push([letter, subtree])
      end

    end

    def printTree(node, s, numbers)

      s += node[0]

      node[1].each do |child|
        printTree(child, s, numbers)
      end

      if !node[1][1]
        numbers.push s
        return
      end

    end

# end
