class AddIrbApprovalImageReferenceToConsent < ActiveRecord::Migration
  def change
    add_reference :consents, :irb_acceptance_image, index: true
  end
end
