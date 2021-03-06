require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BlockTypsController do

  # This should return the minimal set of attributes required to create a valid
  # BlockTyp. As you add validations to BlockTyp, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "show_name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BlockTypsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all block_typs as @block_typs" do
      block_typ = BlockTyp.create! valid_attributes
      get :index, {}, valid_session
      assigns(:block_typs).should eq([block_typ])
    end
  end

  describe "GET show" do
    it "assigns the requested block_typ as @block_typ" do
      block_typ = BlockTyp.create! valid_attributes
      get :show, {:id => block_typ.to_param}, valid_session
      assigns(:block_typ).should eq(block_typ)
    end
  end

  describe "GET new" do
    it "assigns a new block_typ as @block_typ" do
      get :new, {}, valid_session
      assigns(:block_typ).should be_a_new(BlockTyp)
    end
  end

  describe "GET edit" do
    it "assigns the requested block_typ as @block_typ" do
      block_typ = BlockTyp.create! valid_attributes
      get :edit, {:id => block_typ.to_param}, valid_session
      assigns(:block_typ).should eq(block_typ)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BlockTyp" do
        expect {
          post :create, {:block_typ => valid_attributes}, valid_session
        }.to change(BlockTyp, :count).by(1)
      end

      it "assigns a newly created block_typ as @block_typ" do
        post :create, {:block_typ => valid_attributes}, valid_session
        assigns(:block_typ).should be_a(BlockTyp)
        assigns(:block_typ).should be_persisted
      end

      it "redirects to the created block_typ" do
        post :create, {:block_typ => valid_attributes}, valid_session
        response.should redirect_to(BlockTyp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved block_typ as @block_typ" do
        # Trigger the behavior that occurs when invalid params are submitted
        BlockTyp.any_instance.stub(:save).and_return(false)
        post :create, {:block_typ => { "show_name" => "invalid value" }}, valid_session
        assigns(:block_typ).should be_a_new(BlockTyp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BlockTyp.any_instance.stub(:save).and_return(false)
        post :create, {:block_typ => { "show_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested block_typ" do
        block_typ = BlockTyp.create! valid_attributes
        # Assuming there are no other block_typs in the database, this
        # specifies that the BlockTyp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BlockTyp.any_instance.should_receive(:update).with({ "show_name" => "MyString" })
        put :update, {:id => block_typ.to_param, :block_typ => { "show_name" => "MyString" }}, valid_session
      end

      it "assigns the requested block_typ as @block_typ" do
        block_typ = BlockTyp.create! valid_attributes
        put :update, {:id => block_typ.to_param, :block_typ => valid_attributes}, valid_session
        assigns(:block_typ).should eq(block_typ)
      end

      it "redirects to the block_typ" do
        block_typ = BlockTyp.create! valid_attributes
        put :update, {:id => block_typ.to_param, :block_typ => valid_attributes}, valid_session
        response.should redirect_to(block_typ)
      end
    end

    describe "with invalid params" do
      it "assigns the block_typ as @block_typ" do
        block_typ = BlockTyp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BlockTyp.any_instance.stub(:save).and_return(false)
        put :update, {:id => block_typ.to_param, :block_typ => { "show_name" => "invalid value" }}, valid_session
        assigns(:block_typ).should eq(block_typ)
      end

      it "re-renders the 'edit' template" do
        block_typ = BlockTyp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BlockTyp.any_instance.stub(:save).and_return(false)
        put :update, {:id => block_typ.to_param, :block_typ => { "show_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested block_typ" do
      block_typ = BlockTyp.create! valid_attributes
      expect {
        delete :destroy, {:id => block_typ.to_param}, valid_session
      }.to change(BlockTyp, :count).by(-1)
    end

    it "redirects to the block_typs list" do
      block_typ = BlockTyp.create! valid_attributes
      delete :destroy, {:id => block_typ.to_param}, valid_session
      response.should redirect_to(block_typs_url)
    end
  end

end
