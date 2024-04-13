require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new course" do
        post :create, params: {
          course: {
            name: "Test Course",
            description: "Test Description",
            tutors_attributes: [
              { name: "Test Tutor", expertise: "Test Expertise" }
            ]
          }
        }
        expect(response).to have_http_status(:ok)
      end
    end

    context "with invalid parameters" do
      it "returns errors" do
        post :create, params: {
          course: {
            name: "", # Invalid name
            description: "Test Description",
            tutors_attributes: [
              { name: "Test Tutor", expertise: "Test Expertise" }
            ]
          }
        }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(JSON.parse(response.body)["errors"]).to include("Name can't be blank")
      end
    end
  end

  describe "GET #index" do
    it "returns a list of courses with tutors" do
      course = Course.create(name: "Test Course", description: "Test Description")
      tutor = course.tutors.create(name: "Test Tutor", expertise: "Test Expertise")
      
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).first["name"]).to eq(course.name)
      expect(JSON.parse(response.body).first["tutors"].first["name"]).to eq(tutor.name)
    end
  end
end
