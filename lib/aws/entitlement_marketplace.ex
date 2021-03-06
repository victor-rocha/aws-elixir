# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Entitlement.Marketplace do
  @moduledoc """
  AWS Marketplace Entitlement Service

  This reference provides descriptions of the AWS Marketplace Entitlement
  Service API.

  AWS Marketplace Entitlement Service is used to determine the entitlement of
  a customer to a given product. An entitlement represents capacity in a
  product owned by the customer. For example, a customer might own some
  number of users or seats in an SaaS application or some amount of data
  capacity in a multi-tenant database.

  **Getting Entitlement Records**

  <ul> <li> *GetEntitlements*- Gets the entitlements for a Marketplace
  product.

  </li> </ul>
  """

  @doc """
  GetEntitlements retrieves entitlement values for a given product. The
  results can be filtered based on customer identifier or product dimensions.
  """
  def get_entitlements(client, input, options \\ []) do
    request(client, "GetEntitlements", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "aws-marketplace"}
    host = build_host("entitlement.marketplace", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSMPEntitlementService.#{action}"}
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
