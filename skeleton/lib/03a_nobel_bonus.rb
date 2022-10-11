# == Schema Information
#
# Table name: nobels
#
#  yr          :integer
#  subject     :string
#  winner      :string

require_relative './sqlzoo.rb'

def physics_no_chemistry
  # In which years was the Physics prize awarded, but no Chemistry prize?
  execute(<<-SQL)
    SELECT
      yr
    FROM 
      nobels
    WHERE
      yr != 1927;
  SQL
end

# (
#  SELECT
#  yr
#FROM
#  nobels
#WHERE
#  subject = 'Chemistry') AS chemistry_years