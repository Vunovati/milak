require 'test_helper'

class RulesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Rule.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Rule.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Rule.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to rule_url(assigns(:rule))
  end

  def test_edit
    get :edit, :id => Rule.first
    assert_template 'edit'
  end

  def test_update_invalid
    Rule.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Rule.first
    assert_template 'edit'
  end

  def test_update_valid
    Rule.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Rule.first
    assert_redirected_to rule_url(assigns(:rule))
  end

  def test_destroy
    rule = Rule.first
    delete :destroy, :id => rule
    assert_redirected_to rules_url
    assert !Rule.exists?(rule.id)
  end
end
