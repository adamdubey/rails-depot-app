require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end
  
  test "product price must be positive" do
      product = Product.new(title: "Test Book Title",
                            description: "abc",
                            image_url: "xyz.jpg")
      product.price = -1
      assert product.invalid?
      assert_equal ["must be greater than or equal to 0.01"],
        product.errors[:price]
      
      product.price = 0
      assert product.invalid?
      assert_equal ["must be greater than or equal to 0.01"],
        product.errors[:price]
      
      product.price = 1
      assert product.valid?
    end

  def new_product(image_url)
    Product.new(title: "Test Book Title",
                description: "xyz",
                price: 1,
                image_url: image_url)
  end

  test "image url" do
    ok = %w{ quality.gif quality.jpg quality.png QUALITY.JPG QUALITY.Jpg
             http://a.b.c/x/y/z/quality.gif }
    bad = %w{ quality.doc quality.gif/more quality.gif.more }
    
    ok.each do |image_url|
      assert new_product(image_url).valid?,
             "#{image_url} must be valid"
    end

    bad.each do |image_url|
        assert new_product(image_url).invalid?,
               "#{image_url} must be invalid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title: products(:ruby).title,
    description: "xyz",
    price: 1,
    image_url: "lorem.gif")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end

  test "product is not valid without a unique title - i18n" do
    product = Product.new(title: products(:ruby).title,
    description: "xyz",
    price: 1,
    image_url: "lorem.gif")
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
    product.errors[:title]
  end
end
