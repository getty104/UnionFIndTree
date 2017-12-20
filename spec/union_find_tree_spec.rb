require "spec_helper"
include UnionFindTree
RSpec.describe UnionFindTree do

  it "has a version number" do
    expect(UnionFindTree::VERSION).not_to be nil
  end

  describe "same?" do
    it "successfully work" do
      tree = UnionFind.new
      tree.unite(1,2)
      tree.unite(2,3)
      expect(tree.same?(1,3)).to eq(true)
    end

    it "returns false" do
      tree = UnionFind.new
      tree.unite(1,2)
      tree.unite(3,4)
      expect(tree.same?(1,4)).to eq(false)
    end
  end

  describe "size" do
    it "when item is united" do
      tree = UnionFind.new
      tree.unite(1,2)
      tree.unite(2,3)
      expect(tree.size(1)).to eq(3)
    end

    it "when item is not united" do
            tree = UnionFind.new
       expect(tree.size(1)).to eq(1)
    end
  end
end
