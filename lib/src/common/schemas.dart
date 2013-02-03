part of drive_v1_api_client;

/** The metadata for a file. */
class File {

  /** Create time for this file (formatted ISO8601 timestamp). */
  String createdDate;

  /** A short description of the file */
  String description;

  /** Short term download URL for the file. This will only be populated on files with content stored in Drive. */
  String downloadUrl;

  /** ETag of the file. */
  String etag;

  /** The file extension used when downloading this file. This field is read only. To set the extension, include it on title when creating the file. This will only be populated on files with content stored in Drive. */
  String fileExtension;

  /** The size of the file in bytes. This will only be populated on files with content stored in Drive. */
  String fileSize;

  /** The id of the file. */
  String id;

  /** Indexable text attributes for the file (can only be written) */
  FileIndexableText indexableText;

  /** The type of file. This is always drive#file */
  String kind;

  /** Labels for the file. */
  FileLabels labels;

  /** Last time this file was viewed by the user (formatted RFC 3339 timestamp). */
  String lastViewedDate;

  /** An MD5 checksum for the content of this file. This will only be populated on files with content stored in Drive. */
  String md5Checksum;

  /** The mimetype of the file */
  String mimeType;

  /** Last time this file was modified by the user (formatted RFC 3339 timestamp). */
  String modifiedByMeDate;

  /** Last time this file was modified by anyone (formatted RFC 3339 timestamp). */
  String modifiedDate;

  /** Collection of parent folders which contain this file.
On insert, setting this field will put the file in all of the provided folders. If no folders are provided, the file will be placed in the default root folder. On update, this field is ignored. */
  List<FileParentsCollection> parentsCollection;

  /** A link back to this file. */
  String selfLink;

  /** The title of this file. */
  String title;

  /** The permissions for the authenticated user on this file. */
  Permission userPermission;

  /** Create new File from JSON data */
  File.fromJson(Map json) {
    if (json.containsKey("createdDate")) {
      createdDate = json["createdDate"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("downloadUrl")) {
      downloadUrl = json["downloadUrl"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileExtension")) {
      fileExtension = json["fileExtension"];
    }
    if (json.containsKey("fileSize")) {
      fileSize = json["fileSize"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("indexableText")) {
      indexableText = new FileIndexableText.fromJson(json["indexableText"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("labels")) {
      labels = new FileLabels.fromJson(json["labels"]);
    }
    if (json.containsKey("lastViewedDate")) {
      lastViewedDate = json["lastViewedDate"];
    }
    if (json.containsKey("md5Checksum")) {
      md5Checksum = json["md5Checksum"];
    }
    if (json.containsKey("mimeType")) {
      mimeType = json["mimeType"];
    }
    if (json.containsKey("modifiedByMeDate")) {
      modifiedByMeDate = json["modifiedByMeDate"];
    }
    if (json.containsKey("modifiedDate")) {
      modifiedDate = json["modifiedDate"];
    }
    if (json.containsKey("parentsCollection")) {
      parentsCollection = [];
      json["parentsCollection"].forEach((item) {
        parentsCollection.add(new FileParentsCollection.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("userPermission")) {
      userPermission = new Permission.fromJson(json["userPermission"]);
    }
  }

  /** Create JSON Object for File */
  Map toJson() {
    var output = new Map();

    if (createdDate != null) {
      output["createdDate"] = createdDate;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (downloadUrl != null) {
      output["downloadUrl"] = downloadUrl;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileExtension != null) {
      output["fileExtension"] = fileExtension;
    }
    if (fileSize != null) {
      output["fileSize"] = fileSize;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (indexableText != null) {
      output["indexableText"] = indexableText.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (labels != null) {
      output["labels"] = labels.toJson();
    }
    if (lastViewedDate != null) {
      output["lastViewedDate"] = lastViewedDate;
    }
    if (md5Checksum != null) {
      output["md5Checksum"] = md5Checksum;
    }
    if (mimeType != null) {
      output["mimeType"] = mimeType;
    }
    if (modifiedByMeDate != null) {
      output["modifiedByMeDate"] = modifiedByMeDate;
    }
    if (modifiedDate != null) {
      output["modifiedDate"] = modifiedDate;
    }
    if (parentsCollection != null) {
      output["parentsCollection"] = new List();
      parentsCollection.forEach((item) {
        output["parentsCollection"].add(item.toJson());
      });
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (userPermission != null) {
      output["userPermission"] = userPermission.toJson();
    }

    return output;
  }

  /** Return String representation of File */
  String toString() => JSON.stringify(this.toJson());

}

/** Labels for the file. */
class FileLabels {

  /** Whether this file is hidden from the user */
  bool hidden;

  /** Whether this file is starred by the user. */
  bool starred;

  /** Whether this file has been trashed. */
  bool trashed;

  /** Create new FileLabels from JSON data */
  FileLabels.fromJson(Map json) {
    if (json.containsKey("hidden")) {
      hidden = json["hidden"];
    }
    if (json.containsKey("starred")) {
      starred = json["starred"];
    }
    if (json.containsKey("trashed")) {
      trashed = json["trashed"];
    }
  }

  /** Create JSON Object for FileLabels */
  Map toJson() {
    var output = new Map();

    if (hidden != null) {
      output["hidden"] = hidden;
    }
    if (starred != null) {
      output["starred"] = starred;
    }
    if (trashed != null) {
      output["trashed"] = trashed;
    }

    return output;
  }

  /** Return String representation of FileLabels */
  String toString() => JSON.stringify(this.toJson());

}

/** Indexable text attributes for the file (can only be written) */
class FileIndexableText {

  /** The text to be indexed for this file */
  String text;

  /** Create new FileIndexableText from JSON data */
  FileIndexableText.fromJson(Map json) {
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for FileIndexableText */
  Map toJson() {
    var output = new Map();

    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of FileIndexableText */
  String toString() => JSON.stringify(this.toJson());

}

class FileParentsCollection {

  /** The id of this parent */
  String id;

  /** A link to get the metadata for this parent */
  String parentLink;

  /** Create new FileParentsCollection from JSON data */
  FileParentsCollection.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = json["parentLink"];
    }
  }

  /** Create JSON Object for FileParentsCollection */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink;
    }

    return output;
  }

  /** Return String representation of FileParentsCollection */
  String toString() => JSON.stringify(this.toJson());

}

/** A single permission for a file. */
class Permission {

  /** Any additional roles that this permission describes. */
  List<String> additionalRoles;

  /** An etag for this permission. */
  String etag;

  /** The kind of this permission. This is always drive#permission */
  String kind;

  /** The role that this permission describes. (For example: reader, writer, owner) */
  String role;

  /** The type of permission (For example: user, group etc). */
  String type;

  /** Create new Permission from JSON data */
  Permission.fromJson(Map json) {
    if (json.containsKey("additionalRoles")) {
      additionalRoles = [];
      json["additionalRoles"].forEach((item) {
        additionalRoles.add(item);
      });
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Permission */
  Map toJson() {
    var output = new Map();

    if (additionalRoles != null) {
      output["additionalRoles"] = new List();
      additionalRoles.forEach((item) {
        output["additionalRoles"].add(item);
      });
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Permission */
  String toString() => JSON.stringify(this.toJson());

}

