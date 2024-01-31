require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with a first_name and last_name" do
    post = Post.new(first_name: "My first post",last_name: "This is the body of my first post.")
    expect(post).to be_valid
  end
  it "is invalid without a first_name" do
    post = Friend.new(first_name: nil)
    post.valid?
    xpect(post.errors[:first_name]).to include("can't be blank")
  end
  it "is invalid without a last_name" do
    post = Friend.new(last_name: nil)
    post.valid?
    expect(post.errors[:last_name]).to include("can't be blank")
  end
end









