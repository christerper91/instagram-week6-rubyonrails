class RelationshipsController < ApplicationController
  def create
    user = Pengguna.find(params[:following_id])
    current_user.active_relationships.create(following_id: user.id)
    redirect_to pengguna_path(user)
  end

  def destroy
    relationship = Relationship.find(params[:id])
    user = relationship.following
    relationship.destroy
    redirect_to pengguna_path(user)
  end
end
