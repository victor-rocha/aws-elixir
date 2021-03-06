# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComputeOptimizer do
  @moduledoc """
  AWS Compute Optimizer is a service that analyzes the configuration and
  utilization metrics of your AWS resources, such as EC2 instances and Auto
  Scaling groups. It reports whether your resources are optimal, and
  generates optimization recommendations to reduce the cost and improve the
  performance of your workloads. Compute Optimizer also provides recent
  utilization metric data, as well as projected utilization metric data for
  the recommendations, which you can use to evaluate which recommendation
  provides the best price-performance trade-off. The analysis of your usage
  patterns can help you decide when to move or resize your running resources,
  and still meet your performance and capacity requirements. For more
  information about Compute Optimizer, including the required permissions to
  use the service, see the [AWS Compute Optimizer User
  Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).
  """

  @doc """
  Describes recommendation export jobs created in the last seven days.

  Use the `ExportAutoScalingGroupRecommendations` or
  `ExportEC2InstanceRecommendations` actions to request an export of your
  recommendations. Then use the `DescribeRecommendationExportJobs` action to
  view your export jobs.
  """
  def describe_recommendation_export_jobs(client, input, options \\ []) do
    request(client, "DescribeRecommendationExportJobs", input, options)
  end

  @doc """
  Exports optimization recommendations for Auto Scaling groups.

  Recommendations are exported in a comma-separated values (.csv) file, and
  its metadata in a JavaScript Object Notation (.json) file, to an existing
  Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting
  Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Auto Scaling group export job in progress per AWS
  Region.
  """
  def export_auto_scaling_group_recommendations(client, input, options \\ []) do
    request(client, "ExportAutoScalingGroupRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Amazon EC2 instances.

  Recommendations are exported in a comma-separated values (.csv) file, and
  its metadata in a JavaScript Object Notation (.json) file, to an existing
  Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting
  Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Amazon EC2 instance export job in progress per AWS
  Region.
  """
  def export_e_c2_instance_recommendations(client, input, options \\ []) do
    request(client, "ExportEC2InstanceRecommendations", input, options)
  end

  @doc """
  Returns Auto Scaling group recommendations.

  AWS Compute Optimizer currently generates recommendations for Auto Scaling
  groups that are configured to run instances of the M, C, R, T, and X
  instance families. The service does not generate recommendations for Auto
  Scaling groups that have a scaling policy attached to them, or that do not
  have the same values for desired, minimum, and maximum capacity. In order
  for Compute Optimizer to analyze your Auto Scaling groups, they must be of
  a fixed size. For more information, see the [AWS Compute Optimizer User
  Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html).
  """
  def get_auto_scaling_group_recommendations(client, input, options \\ []) do
    request(client, "GetAutoScalingGroupRecommendations", input, options)
  end

  @doc """
  Returns Amazon EC2 instance recommendations.

  AWS Compute Optimizer currently generates recommendations for Amazon
  Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It
  generates recommendations for M, C, R, T, and X instance families. For more
  information, see the [AWS Compute Optimizer User
  Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html).
  """
  def get_e_c2_instance_recommendations(client, input, options \\ []) do
    request(client, "GetEC2InstanceRecommendations", input, options)
  end

  @doc """
  Returns the projected utilization metrics of Amazon EC2 instance
  recommendations.
  """
  def get_e_c2_recommendation_projected_metrics(client, input, options \\ []) do
    request(client, "GetEC2RecommendationProjectedMetrics", input, options)
  end

  @doc """
  Returns the enrollment (opt in) status of an account to the AWS Compute
  Optimizer service.

  If the account is the master account of an organization, this action also
  confirms the enrollment status of member accounts within the organization.
  """
  def get_enrollment_status(client, input, options \\ []) do
    request(client, "GetEnrollmentStatus", input, options)
  end

  @doc """
  Returns the optimization findings for an account.

  For example, it returns the number of Amazon EC2 instances in an account
  that are under-provisioned, over-provisioned, or optimized. It also returns
  the number of Auto Scaling groups in an account that are not optimized, or
  optimized.
  """
  def get_recommendation_summaries(client, input, options \\ []) do
    request(client, "GetRecommendationSummaries", input, options)
  end

  @doc """
  Updates the enrollment (opt in) status of an account to the AWS Compute
  Optimizer service.

  If the account is a master account of an organization, this action can also
  be used to enroll member accounts within the organization.
  """
  def update_enrollment_status(client, input, options \\ []) do
    request(client, "UpdateEnrollmentStatus", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "compute-optimizer"}
    host = build_host("compute-optimizer", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.0"},
      {"X-Amz-Target", "ComputeOptimizerService.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
