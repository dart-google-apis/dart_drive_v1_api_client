part of drive_v1_api;

/** The metadata for a file. */
class File {

  /** Create time for this file (formatted ISO8601 timestamp). */
  core.String createdDate;

  /** A short description of the file */
  core.String description;

  /** Short term download URL for the file. This will only be populated on files with content stored in Drive. */
  core.String downloadUrl;

  /** ETag of the file. */
  core.String etag;

  /** The file extension used when downloading this file. This field is read only. To set the extension, include it on title when creating the file. This will only be populated on files with content stored in Drive. */
  core.String fileExtension;

  /** The size of the file in bytes. This will only be populated on files with content stored in Drive. */
  core.int fileSize;

  /** The id of the file. */
  core.String id;

  /** Indexable text attributes for the file (can only be written) */
  FileIndexableText indexableText;

  /** The type of file. This is always drive#file */
  core.String kind;

  /** Labels for the file. */
  FileLabels labels;

  /** Last time this file was viewed by the user (formatted RFC 3339 timestamp). */
  core.String lastViewedDate;

  /** An MD5 checksum for the content of this file. This will only be populated on files with content stored in Drive. */
  core.String md5Checksum;

  /** The mimetype of the file */
  core.String mimeType;

  /** Last time this file was modified by the user (formatted RFC 3339 timestamp). */
  core.String modifiedByMeDate;

  /** Last time this file was modified by anyone (formatted RFC 3339 timestamp). */
  core.String modifiedDate;

  /** Collection of parent folders which contain this file.
On insert, setting this field will put the file in all of the provided folders. If no folders are provided, the file will be placed in the default root folder. On update, this field is ignored. */
  core.List<FileParentsCollection> parentsCollection;

  /** A link back to this file. */
  core.String selfLink;

  /** The title of this file. */
  core.String title;

  /** The permissions for the authenticated user on this file. */
  Permission userPermission;

  /** Create new File from JSON data */
  File.fromJson(core.Map json) {
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
      fileSize = (json["fileSize"] is core.String) ? core.int.parse(json["fileSize"]) : json["fileSize"];
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
      parentsCollection = json["parentsCollection"].map((parentsCollectionItem) => new FileParentsCollection.fromJson(parentsCollectionItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["parentsCollection"] = parentsCollection.map((parentsCollectionItem) => parentsCollectionItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Indexable text attributes for the file (can only be written) */
class FileIndexableText {

  /** The text to be indexed for this file */
  core.String text;

  /** Create new FileIndexableText from JSON data */
  FileIndexableText.fromJson(core.Map json) {
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for FileIndexableText */
  core.Map toJson() {
    var output = new core.Map();

    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of FileIndexableText */
  core.String toString() => JSON.encode(this.toJson());

}

/** Labels for the file. */
class FileLabels {

  /** Whether this file is hidden from the user */
  core.bool hidden;

  /** Whether this file is starred by the user. */
  core.bool starred;

  /** Whether this file has been trashed. */
  core.bool trashed;

  /** Create new FileLabels from JSON data */
  FileLabels.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class FileParentsCollection {

  /** The id of this parent */
  core.String id;

  /** A link to get the metadata for this parent */
  core.String parentLink;

  /** Create new FileParentsCollection from JSON data */
  FileParentsCollection.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = json["parentLink"];
    }
  }

  /** Create JSON Object for FileParentsCollection */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink;
    }

    return output;
  }

  /** Return String representation of FileParentsCollection */
  core.String toString() => JSON.encode(this.toJson());

}

/** A single permission for a file. */
class Permission {

  /** Any additional roles that this permission describes. */
  core.List<core.String> additionalRoles;

  /** An etag for this permission. */
  core.String etag;

  /** The kind of this permission. This is always drive#permission */
  core.String kind;

  /** The role that this permission describes. (For example: reader, writer, owner) */
  core.String role;

  /** The type of permission (For example: user, group etc). */
  core.String type;

  /** Create new Permission from JSON data */
  Permission.fromJson(core.Map json) {
    if (json.containsKey("additionalRoles")) {
      additionalRoles = json["additionalRoles"].toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (additionalRoles != null) {
      output["additionalRoles"] = additionalRoles.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
