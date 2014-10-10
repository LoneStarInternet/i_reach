require 'spec_helper'

describe Member do
  before(:each) do
    @member = FactoryGirl.create(:member) 
    @contact = @member.contact
  end
  context "creates a contact" do
    it "when creating a member" do
      expect(@contact).not_to eq(nil)
      expect(@contact.new_record?).to eq(false)
    end
    it "with its first_name" do 
      expect(@contact.first_name).to eq(@member.first)
    end
    it "with its last_name" do 
      expect(@contact.last_name).to eq(@member.last)
    end
    it "with its email_address" do 
      expect(@contact.email_address).to eq(@member.email)
    end
  end
  context "updates its contact" do
    it "when updating its first name" do
      new_name = Faker::Name.first_name
      @member.update_attribute(:first, new_name)
      @contact.reload
      expect(@contact.first_name).to eq(new_name)
    end
    it "when updating its first name" do
      new_name = Faker::Name.last_name
      @member.update_attribute(:last, new_name)
      @contact.reload
      expect(@contact.last_name).to eq(new_name)
    end
    it "when updating its first name" do
      new_email = Faker::Internet.safe_email
      @member.update_attribute(:email, new_email)
      @contact.reload
      expect(@contact.email_address).to eq(new_email)
    end
  end

end
