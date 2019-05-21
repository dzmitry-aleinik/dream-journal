class CreateJoinTableUsersRoles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :roles, table_name: :users_roles   do |t|
      t.index :user_id
      t.index :role_id
    end
  end
end
