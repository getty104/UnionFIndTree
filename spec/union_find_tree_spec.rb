require "spec_helper"
include UnionFindTree
RSpec.describe UnionFindTree do

  it "has a version number" do
    expect(UnionFindTree::VERSION).not_to be nil
  end

  describe "same? method" do
    it "return true when same" do
      tree = UnionFind.new
      tree.unite(1,2)
      tree.unite(2,3)
      expect(tree.same?(1,3)).to eq(true)
    end

    it "returns false when different" do
      tree = UnionFind.new
      tree.unite(1,2)
      tree.unite(3,4)
      expect(tree.same?(1,4)).to eq(false)
    end
  end

  describe "size method" do
    it "return size when item is united" do
      tree = UnionFind.new
      tree.unite(1,2)
      tree.unite(2,3)
      expect(tree.size(1)).to eq(3)
    end

    it "return size when item is not united" do
            tree = UnionFind.new
       expect(tree.size(1)).to eq(1)
    end
  end
end
