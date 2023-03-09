require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "tax", "total", "images", "description", "supplier", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { supplier_id: Supplier.first.id, name: "test", price: 10, description: "test description" }
      assert_response 200
    end
  end

  #   post "/products.json", params: {}
  #   assert_response 422
  # end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    # assert_equal product.price, data["price"]
    assert_equal product.images, data["images"]
    assert_equal product.description, data["description"]

    patch "/products/#{product.id}.json", params: { name: "" }
    assert_response 200
  end
end

#   test "destroy" do
#     assert_difference "Product.count", -1 do
#       delete "/products/#{Product.first.id}.json"
#       assert_response 200
#     end
#   end
# end
