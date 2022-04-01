class AddChargeToMembership < ActiveRecord::Migration[6.1]
  def change
    add_column :memberships, :charge, :integer
  end
end
