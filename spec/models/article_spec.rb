# validates :title, presence: true
# validates :body, presence: true, length: { minimum: 10 }
# validates :id, uniqueness: true

require 'rails_helper'

RSpec.describe Article, type: :model do

  before do
    @art = Article.new(title:"My Titleee", body:"HELLOOOO")
    @art.save
  end
  
  it 'is valid with a title and body with a minimum 10 characters' do
    a = Article.new({
                      title: "My Title",
                      body:"Hello Hello Hello Hello"
                      })
    expect(a).to be_valid
    end

  it "is invalid without a title" do
    a = Article.new({
                      body:"HELLO HELLO HELLO HELLO"
                      })
    expect(a).to be_invalid
  end

  it "is invalid without a body" do
    a = Article.new({
                      title:"My Title"
                      })
    expect(a).to be_invalid
  end

  it "is invalid with a body shorter than 10 characters" do
    a = Article.new({
                      title:"My Title",
                      body:"short"
                      })
    expect(a).to be_invalid
  end

  it "is invalid without a unique id" do
    a = Article.new({
                      title:"My Title",
                      body:"short",
                      id: @art[:id]
                      })
    expect(a).to be_invalid
  end

end
