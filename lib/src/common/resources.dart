part of drive_v1_api_client;

class FilesResource extends Resource {

  FilesResource(Client client) : super(client) {
  }

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
  Future<File> get(String id, {String projection, bool updateViewedDate, Map optParams}) {
    var completer = new Completer();
    var url = "files/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new File.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
  Future<File> insert(File request, {String content, String contentType, Map optParams}) {
    var completer = new Completer();
    var url = "files";
    var uploadUrl = "/upload/drive/v1/files";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new File.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates file metadata and/or content. This method supports patch semantics.
   *
   * [request] - File to send in this request
   *
   * [id] - The id for the file in question.
   *
   * [newRevision] - Whether a blob upload should create a new revision. If not set or false, the blob data in the current head revision will be replaced.
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
  Future<File> patch(File request, String id, {bool newRevision, bool updateModifiedDate, bool updateViewedDate, Map optParams}) {
    var completer = new Completer();
    var url = "files/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new File.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [newRevision] - Whether a blob upload should create a new revision. If not set or false, the blob data in the current head revision will be replaced.
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
  Future<File> update(File request, String id, {String content, String contentType, bool newRevision, bool updateModifiedDate, bool updateViewedDate, Map optParams}) {
    var completer = new Completer();
    var url = "files/{id}";
    var uploadUrl = "/upload/drive/v1/files/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "PUT", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new File.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

