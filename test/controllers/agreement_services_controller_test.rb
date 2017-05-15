require 'test_helper'

class AgreementServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agreement_service = agreement_services(:one)
  end

  test "should get index" do
    get agreement_services_url
    assert_response :success
  end

  test "should get new" do
    get new_agreement_service_url
    assert_response :success
  end

  test "should create agreement_service" do
    assert_difference('AgreementService.count') do
      post agreement_services_url, params: { agreement_service: { agreement_id: @agreement_service.agreement_id, amount: @agreement_service.amount, service_id: @agreement_service.service_id, total_amount: @agreement_service.total_amount, unit_price: @agreement_service.unit_price } }
    end

    assert_redirected_to agreement_service_url(AgreementService.last)
  end

  test "should show agreement_service" do
    get agreement_service_url(@agreement_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_agreement_service_url(@agreement_service)
    assert_response :success
  end

  test "should update agreement_service" do
    patch agreement_service_url(@agreement_service), params: { agreement_service: { agreement_id: @agreement_service.agreement_id, amount: @agreement_service.amount, service_id: @agreement_service.service_id, total_amount: @agreement_service.total_amount, unit_price: @agreement_service.unit_price } }
    assert_redirected_to agreement_service_url(@agreement_service)
  end

  test "should destroy agreement_service" do
    assert_difference('AgreementService.count', -1) do
      delete agreement_service_url(@agreement_service)
    end

    assert_redirected_to agreement_services_url
  end
end
