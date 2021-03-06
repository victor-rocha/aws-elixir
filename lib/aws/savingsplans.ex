# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Savingsplans do
  @moduledoc """
  Savings Plans are a pricing model that offer significant savings on AWS
  usage (for example, on Amazon EC2 instances). You commit to a consistent
  amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a
  lower price for that usage. For more information, see the [AWS Savings
  Plans User
  Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/).
  """

  @doc """
  Creates a Savings Plan.
  """
  def create_savings_plan(client, input, options \\ []) do
    path_ = "/CreateSavingsPlan"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans rates.
  """
  def describe_savings_plan_rates(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlanRates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans.
  """
  def describe_savings_plans(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlans"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans offering rates.
  """
  def describe_savings_plans_offering_rates(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlansOfferingRates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans offerings.
  """
  def describe_savings_plans_offerings(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlansOfferings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    path_ = "/ListTagsForResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds the specified tags to the specified resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/TagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/UntagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "savingsplans",
                        region:  "us-east-1"}
    host = build_host("savingsplans", client)
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
  defp build_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
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
