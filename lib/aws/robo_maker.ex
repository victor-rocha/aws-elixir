# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RoboMaker do
  @moduledoc """
  This section provides documentation for the AWS RoboMaker API operations.
  """

  @doc """
  Describes one or more simulation jobs.
  """
  def batch_describe_simulation_job(client, input, options \\ []) do
    path_ = "/batchDescribeSimulationJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels the specified deployment job.
  """
  def cancel_deployment_job(client, input, options \\ []) do
    path_ = "/cancelDeploymentJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels the specified simulation job.
  """
  def cancel_simulation_job(client, input, options \\ []) do
    path_ = "/cancelSimulationJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels a simulation job batch. When you cancel a simulation job batch, you
  are also cancelling all of the active simulation jobs created as part of
  the batch.
  """
  def cancel_simulation_job_batch(client, input, options \\ []) do
    path_ = "/cancelSimulationJobBatch"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deploys a specific version of a robot application to robots in a fleet.

  The robot application must have a numbered `applicationVersion` for
  consistency reasons. To create a new version, use
  `CreateRobotApplicationVersion` or see [Creating a Robot Application
  Version](https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html).

  <note> After 90 days, deployment jobs expire and will be deleted. They will
  no longer be accessible.

  </note>
  """
  def create_deployment_job(client, input, options \\ []) do
    path_ = "/createDeploymentJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a fleet, a logical group of robots running the same robot
  application.
  """
  def create_fleet(client, input, options \\ []) do
    path_ = "/createFleet"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a robot.
  """
  def create_robot(client, input, options \\ []) do
    path_ = "/createRobot"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a robot application.
  """
  def create_robot_application(client, input, options \\ []) do
    path_ = "/createRobotApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a version of a robot application.
  """
  def create_robot_application_version(client, input, options \\ []) do
    path_ = "/createRobotApplicationVersion"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a simulation application.
  """
  def create_simulation_application(client, input, options \\ []) do
    path_ = "/createSimulationApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a simulation application with a specific revision id.
  """
  def create_simulation_application_version(client, input, options \\ []) do
    path_ = "/createSimulationApplicationVersion"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a simulation job.

  <note> After 90 days, simulation jobs expire and will be deleted. They will
  no longer be accessible.

  </note>
  """
  def create_simulation_job(client, input, options \\ []) do
    path_ = "/createSimulationJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a fleet.
  """
  def delete_fleet(client, input, options \\ []) do
    path_ = "/deleteFleet"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a robot.
  """
  def delete_robot(client, input, options \\ []) do
    path_ = "/deleteRobot"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a robot application.
  """
  def delete_robot_application(client, input, options \\ []) do
    path_ = "/deleteRobotApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a simulation application.
  """
  def delete_simulation_application(client, input, options \\ []) do
    path_ = "/deleteSimulationApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deregisters a robot.
  """
  def deregister_robot(client, input, options \\ []) do
    path_ = "/deregisterRobot"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a deployment job.
  """
  def describe_deployment_job(client, input, options \\ []) do
    path_ = "/describeDeploymentJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a fleet.
  """
  def describe_fleet(client, input, options \\ []) do
    path_ = "/describeFleet"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a robot.
  """
  def describe_robot(client, input, options \\ []) do
    path_ = "/describeRobot"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a robot application.
  """
  def describe_robot_application(client, input, options \\ []) do
    path_ = "/describeRobotApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a simulation application.
  """
  def describe_simulation_application(client, input, options \\ []) do
    path_ = "/describeSimulationApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a simulation job.
  """
  def describe_simulation_job(client, input, options \\ []) do
    path_ = "/describeSimulationJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a simulation job batch.
  """
  def describe_simulation_job_batch(client, input, options \\ []) do
    path_ = "/describeSimulationJobBatch"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of deployment jobs for a fleet. You can optionally provide
  filters to retrieve specific deployment jobs.
  """
  def list_deployment_jobs(client, input, options \\ []) do
    path_ = "/listDeploymentJobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of fleets. You can optionally provide filters to retrieve
  specific fleets.
  """
  def list_fleets(client, input, options \\ []) do
    path_ = "/listFleets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of robot application. You can optionally provide filters to
  retrieve specific robot applications.
  """
  def list_robot_applications(client, input, options \\ []) do
    path_ = "/listRobotApplications"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of robots. You can optionally provide filters to retrieve
  specific robots.
  """
  def list_robots(client, input, options \\ []) do
    path_ = "/listRobots"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of simulation applications. You can optionally provide
  filters to retrieve specific simulation applications.
  """
  def list_simulation_applications(client, input, options \\ []) do
    path_ = "/listSimulationApplications"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list simulation job batches. You can optionally provide filters
  to retrieve specific simulation batch jobs.
  """
  def list_simulation_job_batches(client, input, options \\ []) do
    path_ = "/listSimulationJobBatches"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of simulation jobs. You can optionally provide filters to
  retrieve specific simulation jobs.
  """
  def list_simulation_jobs(client, input, options \\ []) do
    path_ = "/listSimulationJobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists all tags on a AWS RoboMaker resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Registers a robot with a fleet.
  """
  def register_robot(client, input, options \\ []) do
    path_ = "/registerRobot"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Restarts a running simulation job.
  """
  def restart_simulation_job(client, input, options \\ []) do
    path_ = "/restartSimulationJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts a new simulation job batch. The batch is defined using one or more
  `SimulationJobRequest` objects.
  """
  def start_simulation_job_batch(client, input, options \\ []) do
    path_ = "/startSimulationJobBatch"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if
  robots were added after a deployment.
  """
  def sync_deployment_job(client, input, options \\ []) do
    path_ = "/syncDeploymentJob"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds or edits tags for a AWS RoboMaker resource.

  Each tag consists of a tag key and a tag value. Tag keys and tag values are
  both required, but tag values can be empty strings.

  For information about the rules that apply to tag keys and tag values, see
  [User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from the specified AWS RoboMaker resource.

  To remove a tag, specify the tag key. To change the tag value of an
  existing tag key, use [ `TagResource`
  ](https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html).
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a robot application.
  """
  def update_robot_application(client, input, options \\ []) do
    path_ = "/updateRobotApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a simulation application.
  """
  def update_simulation_application(client, input, options \\ []) do
    path_ = "/updateSimulationApplication"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "robomaker"}
    host = build_host("robomaker", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
