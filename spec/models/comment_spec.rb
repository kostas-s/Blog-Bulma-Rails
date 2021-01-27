  # belongs_to :article
  # validates :commenter, presence: true
  # validates :body, presence: true
  # validates :id, uniqueness: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @a = Article.new(title:"My Title", body:"Loooooooong Body")
    @a.save
    @com = Comment.new(commenter:"Mr.Robotz", body:"LALALALALA", article_id:@a[:id])
    @com.save
  end

  it "should be invalid without an attached article" do
    c = Comment.new(commenter:"Mr.Robot", body:"my body my rules")
    expect(c).to be_invalid
  end

  it "should be valid with commenter, body and an attached article" do
    c = Comment.new(commenter:"Mr.Robot", body:"My body my rules", article_id:@a[:id])
    expect(c).to be_valid
  end

  it "should be invalid with an article_id but no commenter" do
    c = Comment.new({
                      body:"My Body",
                      article_id:@a[:id]
                      })
    expect(c).to be_invalid
  end

  it "should be invalid with an article_id but no body" do
    c = Comment.new({
                      commenter:"Mr.Robot",
                      article_id:@a[:id]
                      })
    expect(c).to be_invalid
  end

  it "should always have unique id" do
    c = Comment.new({
                      commenter:"Mr.Robot",
                      body:"My Body",
                      article_id:@a[:id],
                      id:@com[:id]
                      })
    expect(c).to be_invalid
  end

end
