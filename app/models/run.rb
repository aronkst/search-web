class Run < ApplicationRecord
  belongs_to :search
  has_many :run_values, class_name: 'RunValues', dependent: :destroy

  after_save :stream_finish_updated
  after_create :start_job

  private

  def stream_finish_updated
    broadcast_replace_to(self, target: :finish, partial: 'run/finish', locals: { run: self })
  end

  def start_job
    SearchWebJob.perform_later(id)
  end
end
