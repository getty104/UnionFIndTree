require "spec_helper"
include UnionFindTree
RSpec.describe UnionFindTree do

  it "has a version number" do
    expect(UnionFindTree::VERSION).not_to be nil
  end

  describe "same? returns true" do
    it "same? method successfully work" do
      tree = UnionFindTree.new
      tree.unite(1,2)
      tree.unite(2,3)
      expect(tree.same?(1,3)).to eq(true)
    end

    it "same? returns false" do
      tree = UnionFindTree.new
      tree.unite(1,2)
      tree.unite(3,4)
      expect(tree.same?(1,4)).to eq(false)
    end
  end

  it "size method successfully work" do
      tree = UnionFindTree.new
      tree.unite(1,2)
      tree.unite(2,3)
    expect(tree.size).to eq(3)
  end
end
