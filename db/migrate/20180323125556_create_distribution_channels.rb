class CreateDistributionChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :distribution_channels do |t|
      t.string :type

      t.timestamps
    end
  end
end
