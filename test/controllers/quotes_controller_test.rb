require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  test 'should create new quote' do
    assert_difference 'Quote.count' do
    post quotes_path, params: { quote: { body: 'test quote' } }
    end
  end

  test 'should not create new quote' do
    assert_no_difference 'Quote.count' do
    post quotes_path, params: { quote: { body: '' } }
    end
  end
end
