# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Translate do
  @moduledoc """
  Provides translation between one source language and another of the same
  set of languages.
  """

  @doc """
  A synchronous action that deletes a custom terminology.
  """
  def delete_terminology(client, input, options \\ []) do
    request(client, "DeleteTerminology", input, options)
  end

  @doc """
  Gets the properties associated with an asycnhronous batch translation job
  including name, ID, status, source and target languages, input/output S3
  buckets, and so on.
  """
  def describe_text_translation_job(client, input, options \\ []) do
    request(client, "DescribeTextTranslationJob", input, options)
  end

  @doc """
  Retrieves a custom terminology.
  """
  def get_terminology(client, input, options \\ []) do
    request(client, "GetTerminology", input, options)
  end

  @doc """
  Creates or updates a custom terminology, depending on whether or not one
  already exists for the given terminology name. Importing a terminology with
  the same name as an existing one will merge the terminologies based on the
  chosen merge strategy. Currently, the only supported merge strategy is
  OVERWRITE, and so the imported terminology will overwrite an existing
  terminology of the same name.

  If you import a terminology that overwrites an existing one, the new
  terminology take up to 10 minutes to fully propagate and be available for
  use in a translation due to cache policies with the DataPlane service that
  performs the translations.
  """
  def import_terminology(client, input, options \\ []) do
    request(client, "ImportTerminology", input, options)
  end

  @doc """
  Provides a list of custom terminologies associated with your account.
  """
  def list_terminologies(client, input, options \\ []) do
    request(client, "ListTerminologies", input, options)
  end

  @doc """
  Gets a list of the batch translation jobs that you have submitted.
  """
  def list_text_translation_jobs(client, input, options \\ []) do
    request(client, "ListTextTranslationJobs", input, options)
  end

  @doc """
  Starts an asynchronous batch translation job. Batch translation jobs can be
  used to translate large volumes of text across multiple documents at once.
  For more information, see `async`.

  Batch translation jobs can be described with the
  `DescribeTextTranslationJob` operation, listed with the
  `ListTextTranslationJobs` operation, and stopped with the
  `StopTextTranslationJob` operation.

  <note> Amazon Translate does not support batch translation of multiple
  source languages at once.

  </note>
  """
  def start_text_translation_job(client, input, options \\ []) do
    request(client, "StartTextTranslationJob", input, options)
  end

  @doc """
  Stops an asynchronous batch translation job that is in progress.

  If the job's state is `IN_PROGRESS`, the job will be marked for termination
  and put into the `STOP_REQUESTED` state. If the job completes before it can
  be stopped, it is put into the `COMPLETED` state. Otherwise, the job is put
  into the `STOPPED` state.

  Asynchronous batch translation jobs are started with the
  `StartTextTranslationJob` operation. You can use the
  `DescribeTextTranslationJob` or `ListTextTranslationJobs` operations to get
  a batch translation job's `JobId`.
  """
  def stop_text_translation_job(client, input, options \\ []) do
    request(client, "StopTextTranslationJob", input, options)
  end

  @doc """
  Translates input text from the source language to the target language. For
  a list of available languages and language codes, see `what-is-languages`.
  """
  def translate_text(client, input, options \\ []) do
    request(client, "TranslateText", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "translate"}
    host = build_host("translate", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSShineFrontendService_20170701.#{action}"}
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
