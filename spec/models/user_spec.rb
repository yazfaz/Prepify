require 'spec_helper'

describe User do
  let(:user) {User.create(email: "text@example.com", password: "password")}
  let(:subject) {Subject.create(name: "Algebra", section: "Math")}
  describe "#{started_subject}" do
    context "if subject has been started" do
      it "determines if a subject has been started or not" do
        user.course_progressions.create(subject_id: subject.id)
        expect(user.started_subject?(subject)).to eq(true)
      end
    end
  end

    context "if subject has not been started" do
      it "should return false" do
        expect(user.started_subject?(subject)).to eq(false)
      end
    end
end