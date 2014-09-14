part of drive_v1_api;

class FilesResource_ {

  final Client _client;

  FilesResource_(Client client) :
      _client = client;

  /**
   * Gets a file's metadata by id.
   *
   * [id] - The id for the file in question.
   *
   * [projection] - This parameter is deprecated and has no function.
   *   Allowed values:
   *     BASIC - Deprecated
   *     FULL - Deprecated
   *
   * [updateViewedDate] - Whether to update the view date after successfully retrieving the file.
   *   Default: true
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> get(core.String id, {core.String projection, core.bool updateViewedDate, core.Map optParams}) {
    var url = "files/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (updateViewedDate != null) queryParams["updateViewedDate"] = updateViewedDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new File.fromJson(data));
  }

  /**
   * Inserts a file, and any settable metadata or blob content sent with the request.
   *
   * [request] - File to send in this request
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> insert(File request, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "files";
    var uploadUrl = "/upload/drive/v1/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new File.fromJson(data));
  }

  /**
   * Updates file metadata and/or content. This method supports patch semantics.
   *
   * [request] - File to send in this request
   *
   * [id] - The id for the file in question.
   *
   * [newRevision] - Whether a blob upload should create a new revision. If false, the blob data in the current head revision is replaced. If true or not set, a new blob is created as head revision, and previous revisions are preserved (causing increased use of the user's data storage quota).
   *   Default: true
   *
   * [updateModifiedDate] - Controls updating the modified date of the file. If true, the modified date will be updated to the current time, regardless of whether other changes are being made. If false, the modified date will only be updated to the current time if other changes are also being made (changing the title, for example).
   *   Default: false
   *
   * [updateViewedDate] - Whether to update the view date after successfully updating the file.
   *   Default: true
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> patch(File request, core.String id, {core.bool newRevision, core.bool updateModifiedDate, core.bool updateViewedDate, core.Map optParams}) {
    var url = "files/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (newRevision != null) queryParams["newRevision"] = newRevision;
    if (updateModifiedDate != null) queryParams["updateModifiedDate"] = updateModifiedDate;
    if (updateViewedDate != null) queryParams["updateViewedDate"] = updateViewedDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new File.fromJson(data));
  }

  /**
   * Updates file metadata and/or content
   *
   * [request] - File to send in this request
   *
   * [id] - The id for the file in question.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [newRevision] - Whether a blob upload should create a new revision. If false, the blob data in the current head revision is replaced. If true or not set, a new blob is created as head revision, and previous revisions are preserved (causing increased use of the user's data storage quota).
   *   Default: true
   *
   * [updateModifiedDate] - Controls updating the modified date of the file. If true, the modified date will be updated to the current time, regardless of whether other changes are being made. If false, the modified date will only be updated to the current time if other changes are also being made (changing the title, for example).
   *   Default: false
   *
   * [updateViewedDate] - Whether to update the view date after successfully updating the file.
   *   Default: true
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> update(File request, core.String id, {core.String content, core.String contentType, core.bool newRevision, core.bool updateModifiedDate, core.bool updateViewedDate, core.Map optParams}) {
    var url = "files/{id}";
    var uploadUrl = "/upload/drive/v1/files/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (newRevision != null) queryParams["newRevision"] = newRevision;
    if (updateModifiedDate != null) queryParams["updateModifiedDate"] = updateModifiedDate;
    if (updateViewedDate != null) queryParams["updateViewedDate"] = updateViewedDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "PUT", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new File.fromJson(data));
  }
}

