# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { 'Sample article' }
    content { 'Sample content' }
    slug { 'sample-article' }
    # sequence(:slug) { |n| "sample-article-#{n}" }
  end
end
