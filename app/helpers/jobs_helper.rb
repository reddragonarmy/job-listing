module JobsHelper

  def render_job_description(job)
    job.description
  end

  def render_job_time(time)
    time
  end

  def render_job_status(job)
    if job.is_hidden
      content_tag(:i, "", class: ["fas", "fa-lock"])
    else
      content_tag(:i, "", class: ["fas", "fa-eye"])
    end
  end

end
