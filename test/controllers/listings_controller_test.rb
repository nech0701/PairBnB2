require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { accomodates: @listing.accomodates, address: @listing.address, apartment: @listing.apartment, city: @listing.city, description: @listing.description, house: @listing.house, pet_friendly: @listing.pet_friendly, price: @listing.price, smoking_room: @listing.smoking_room, user_id: @listing.user_id }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { accomodates: @listing.accomodates, address: @listing.address, apartment: @listing.apartment, city: @listing.city, description: @listing.description, house: @listing.house, pet_friendly: @listing.pet_friendly, price: @listing.price, smoking_room: @listing.smoking_room, user_id: @listing.user_id }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
