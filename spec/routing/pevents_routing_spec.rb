require "rails_helper"

RSpec.describe PeventsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pevents").to route_to("pevents#index")
    end

    it "routes to #new" do
      expect(get: "/pevents/new").to route_to("pevents#new")
    end

    it "routes to #show" do
      expect(get: "/pevents/1").to route_to("pevents#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pevents/1/edit").to route_to("pevents#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pevents").to route_to("pevents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pevents/1").to route_to("pevents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pevents/1").to route_to("pevents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pevents/1").to route_to("pevents#destroy", id: "1")
    end
  end
end
