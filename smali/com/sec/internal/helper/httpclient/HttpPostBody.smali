.class public Lcom/sec/internal/helper/httpclient/HttpPostBody;
.super Ljava/lang/Object;
.source "HttpPostBody.java"


# static fields
.field public static final CONTENT_DISPOSITION_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION_FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final CONTENT_DISPOSITION_ICON:Ljava/lang/String; = "icon"

.field public static final CONTENT_TRANSFER_ENCODING_BASE64:Ljava/lang/String; = "base64"

.field public static final CONTENT_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/"

.field public static final CONTENT_TYPE_MULTIPART_FORMDATA:Ljava/lang/String; = "multipart/form-data"

.field public static final CONTENT_TYPE_MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field public static final CONTENT_TYPE_MULTIPART_RELATED:Ljava/lang/String; = "multipart/related"

.field public static final CONTENT_TYPE_X_WWW_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBody:Ljava/lang/String;

.field private mBodySize:J

.field private mContentDisposition:Ljava/lang/String;

.field private mContentId:Ljava/lang/String;

.field private mContentTransferEncoding:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:[B

.field private mFile:Ljava/io/File;

.field private mFileIcon:Ljava/lang/String;

.field private mJSONBody:Lorg/json/JSONObject;

.field private mMultiparts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 62
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 49
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 127
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 129
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 130
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 131
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 132
    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 136
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 90
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 93
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 96
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p3, "multipart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 139
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 141
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 142
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 143
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 144
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 145
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    iget-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 146
    .end local v1    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 101
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 103
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 104
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 105
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 106
    if-eqz p3, :cond_0

    .line 107
    array-length v2, p3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 109
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "fileIcon"    # Ljava/lang/String;
    .param p5, "contentId"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 112
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 114
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 116
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 117
    if-eqz p3, :cond_0

    .line 118
    array-length v2, p3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 120
    :cond_0
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 121
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 122
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "multipart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 76
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 79
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    iget-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 80
    .end local v1    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "postParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 85
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 86
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonBody"    # Lorg/json/JSONObject;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 54
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 69
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 70
    if-eqz p1, :cond_0

    .line 71
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 73
    :cond_0
    return-void
.end method

.method private convertPrams(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 199
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 202
    const/4 v1, 0x0

    return-object v1
.end method

.method private convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p2, "charSet"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 208
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 209
    .local v0, "isFirstEntry":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 212
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    goto :goto_1

    .line 215
    :cond_0
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFieldSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeIndent(I)Ljava/lang/String;
    .locals 3
    .param p1, "depth"    # I

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v0, "indent":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, p1, 0x2

    if-ge v1, v2, :cond_0

    .line 272
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toString(I)Ljava/lang/String;
    .locals 13
    .param p1, "depth"    # I

    .line 237
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "indent2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v2, "multiparts":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-nez v3, :cond_0

    .line 242
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 244
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 245
    .local v4, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    add-int/lit8 v5, p1, 0x1

    invoke-direct {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    .end local v4    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_0

    .line 249
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, "mMultiparts: "

    const-string v6, "mFile: "

    const-string v7, "mContentTransferEncoding: "

    const-string v8, "mContentType: "

    const-string v9, "mContentDisposition: "

    const-string v10, ")[\r\n"

    const-string v11, "HttpPostBody(depth"

    const-string v12, "\r\n"

    if-eqz v3, :cond_2

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mBody: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 257
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "mFileIcon: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "mContentId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mData: length is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz v7, :cond_3

    array-length v7, v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mData: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz v7, :cond_4

    array-length v7, v7

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_4

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    return-object v3
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBodySize()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-wide v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileIcon()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONBody()Lorg/json/JSONObject;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMultiparts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    return-object v0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 228
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    const-string v0, ""

    return-object v0
.end method
