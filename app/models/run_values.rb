class RunValues < ApplicationRecord
  validates :run, :page, :values, presence: true
  validates :page, numericality: { only_integer: true, in: 1..10 }

  belongs_to :run

  after_create :stream_created

  private

  def stream_created
    broadcast_append_to(run, target: :values, partial: 'run/values', locals: { values: self })
  end
end
