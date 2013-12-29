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

describe AppVersionsController do

  # This should return the minimal set of attributes required to create a valid
  # AppVersion. As you add validations to AppVersion, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "version_number" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AppVersionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all app_versions as @app_versions" do
      app_version = AppVersion.create! valid_attributes
      get :index, {}, valid_session
      assigns(:app_versions).should eq([app_version])
    end
  end

  describe "GET show" do
    it "assigns the requested app_version as @app_version" do
      app_version = AppVersion.create! valid_attributes
      get :show, {:id => app_version.to_param}, valid_session
      assigns(:app_version).should eq(app_version)
    end
  end

  describe "GET new" do
    it "assigns a new app_version as @app_version" do
      get :new, {}, valid_session
      assigns(:app_version).should be_a_new(AppVersion)
    end
  end

  describe "GET edit" do
    it "assigns the requested app_version as @app_version" do
      app_version = AppVersion.create! valid_attributes
      get :edit, {:id => app_version.to_param}, valid_session
      assigns(:app_version).should eq(app_version)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AppVersion" do
        expect {
          post :create, {:app_version => valid_attributes}, valid_session
        }.to change(AppVersion, :count).by(1)
      end

      it "assigns a newly created app_version as @app_version" do
        post :create, {:app_version => valid_attributes}, valid_session
        assigns(:app_version).should be_a(AppVersion)
        assigns(:app_version).should be_persisted
      end

      it "redirects to the created app_version" do
        post :create, {:app_version => valid_attributes}, valid_session
        response.should redirect_to(AppVersion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved app_version as @app_version" do
        # Trigger the behavior that occurs when invalid params are submitted
        AppVersion.any_instance.stub(:save).and_return(false)
        post :create, {:app_version => { "version_number" => "invalid value" }}, valid_session
        assigns(:app_version).should be_a_new(AppVersion)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AppVersion.any_instance.stub(:save).and_return(false)
        post :create, {:app_version => { "version_number" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested app_version" do
        app_version = AppVersion.create! valid_attributes
        # Assuming there are no other app_versions in the database, this
        # specifies that the AppVersion created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AppVersion.any_instance.should_receive(:update).with({ "version_number" => "MyString" })
        put :update, {:id => app_version.to_param, :app_version => { "version_number" => "MyString" }}, valid_session
      end

      it "assigns the requested app_version as @app_version" do
        app_version = AppVersion.create! valid_attributes
        put :update, {:id => app_version.to_param, :app_version => valid_attributes}, valid_session
        assigns(:app_version).should eq(app_version)
      end

      it "redirects to the app_version" do
        app_version = AppVersion.create! valid_attributes
        put :update, {:id => app_version.to_param, :app_version => valid_attributes}, valid_session
        response.should redirect_to(app_version)
      end
    end

    describe "with invalid params" do
      it "assigns the app_version as @app_version" do
        app_version = AppVersion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AppVersion.any_instance.stub(:save).and_return(false)
        put :update, {:id => app_version.to_param, :app_version => { "version_number" => "invalid value" }}, valid_session
        assigns(:app_version).should eq(app_version)
      end

      it "re-renders the 'edit' template" do
        app_version = AppVersion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AppVersion.any_instance.stub(:save).and_return(false)
        put :update, {:id => app_version.to_param, :app_version => { "version_number" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested app_version" do
      app_version = AppVersion.create! valid_attributes
      expect {
        delete :destroy, {:id => app_version.to_param}, valid_session
      }.to change(AppVersion, :count).by(-1)
    end

    it "redirects to the app_versions list" do
      app_version = AppVersion.create! valid_attributes
      delete :destroy, {:id => app_version.to_param}, valid_session
      response.should redirect_to(app_versions_url)
    end
  end

end