class NotInFutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.blank?
      record.errors.add attribute
    elsif value >= Time.zone.today
      record.errors.add attribute,
                        (options[:message] || "não pode ser futura")
    end
  end
end