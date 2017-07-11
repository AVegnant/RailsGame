class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
	
	alias_action :create, :read, :update, :destroy, to :crud   #pour ne pas se répéter
	can [:read], Post  #Seules les actions :index et :show sont accessibles publiquement
	
	if user.id
	  can [:crud], Post, {user_id: user.id}   #Il faut être le propriétaire d'un fichier pour pouvoir l'éditer
	end
	
	if user.admin?
	  can :manage, :all   #L'administrateur peut modifier tout fichier
	end
	
	can? :edit, @post #boolean
	authorize! :edit, @post #Renvoie une exception
  end
end

class PostsController > ApplicationController

load_and_autorize_resource   #permet d'appeler le @post et vérifie les permissions


  # before_action :set_post
  # authorize_resource
    # Pour appeler l'article manuellement

 