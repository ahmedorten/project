class NotificationsObserver < ActiveRecord::Observer
 

  def after_create(record)
    post.create(record.name , record.price , record.user_id)
  end

end