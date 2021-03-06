require "union_find_tree/version"

module UnionFindTree
  class UnionFind

    class ParArray < Hash
      def [] key
        self[key] = key if super(key).nil?
        super(key)
      end
    end

    class SizeArray < Hash
      def [] key
        self[key] = 1 if super(key).nil?
        super(key)
      end
    end

    def initialize()
      @par = ParArray.new
      @size = SizeArray.new
    end

    public

    def unite(x, y)
      x = find(x)
      y = find(y)

      return nil if x == y
      x, y = y, x if @size[x] < @size[y]

      @par[y] = x
      @size[x] += @size[y]
    end

    def same?(x, y)
      return find(x) == find(y)
    end

    def size(x)
      return @size[find(x)]
    end

    private

    def find(x)
      return x if x == @par[x]
      return @par[x] = find(@par[x])
    end
  end
end
