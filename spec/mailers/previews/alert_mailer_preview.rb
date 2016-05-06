# Preview all emails at http://localhost:3000/rails/mailers/survey_mailer
class AlertPreview < ActionMailer::Preview
  def articles_for_deletion_alert
    AlertMailer.alert(Alert.where(type: 'ArticlesForDeletionAlert').last, User.last)
  end

  def no_enrolled_students_alert
    AlertMailer.alert(Alert.where(type: 'NoEnrolledStudentsAlert').last, User.last)
  end
end
