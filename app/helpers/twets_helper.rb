module TwetsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
        confirm_twets_path
    elsif action_name == 'edit'
        twet_path
    end
  end
end
