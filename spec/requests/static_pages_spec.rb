require 'spec_helper'

describe "StaticPages" do

  subject {page}

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before {visit root_path}

    let(:heading)     { 'Sample App' }
    let(:page_title)  { '' }

  end

  describe "Help page" do
    before {visit help_path}

    it {should have_content('Help')}
    it {should have_title(full_title('Help'))}
  end

  describe "About page" do
    before {visit about_path}

    it {should have_content('About')}
    it {should have_title('About Us')}
  end

  describe "Contact Us" do
    before {visit contact_path}

    it {should have_content('Contact')}
    it {should have_title('Contact')}
  end

end
