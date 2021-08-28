.class public Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDeleteRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    .locals 2
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p1, "reqBuilder"    # Lcom/squareup/okhttp/Request$Builder;

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v1, "buildDeleteRequest: delete all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->delete()Lcom/squareup/okhttp/Request$Builder;

    .line 95
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 100
    .local v0, "requestBody":Lcom/squareup/okhttp/RequestBody;
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Request$Builder;->delete(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 101
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    return-object v1
.end method

.method private static buildFormEncodingBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;
    .locals 8
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 159
    new-instance v0, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    .line 160
    .local v0, "formEncodingbuilder":Lcom/squareup/okhttp/FormEncodingBuilder;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getJSONBody()Lorg/json/JSONObject;

    move-result-object v1

    .line 162
    .local v1, "body":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 163
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 164
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 167
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v4

    .line 169
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildFormEncodingBody: failed to load value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 171
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    return-object v4
.end method

.method private static buildMultipart(Lcom/squareup/okhttp/MultipartBuilder;Ljava/util/List;)V
    .locals 6
    .param p0, "multBuilder"    # Lcom/squareup/okhttp/MultipartBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/MultipartBuilder;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 184
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v2

    const-string v3, "Content-Disposition"

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 185
    new-instance v2, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v2}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    .line 186
    .local v2, "innerMBuilder":Lcom/squareup/okhttp/MultipartBuilder;
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->setMultipartType(Lcom/squareup/okhttp/MultipartBuilder;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildMultipart(Lcom/squareup/okhttp/MultipartBuilder;Ljava/util/List;)V

    .line 188
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    .line 190
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentDisposition()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 188
    invoke-static {v4}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 191
    invoke-virtual {v2}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    .line 188
    invoke-virtual {p0, v3, v4}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 193
    .end local v2    # "innerMBuilder":Lcom/squareup/okhttp/MultipartBuilder;
    :cond_1
    goto/16 :goto_1

    .line 194
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    nop

    .line 198
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v4, "Content-Transfer-Encoding"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFileIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    nop

    .line 202
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFileIcon()Ljava/lang/String;

    move-result-object v3

    .line 201
    const-string v4, "File-Icon"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 205
    nop

    .line 206
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentId()Ljava/lang/String;

    move-result-object v3

    .line 205
    const-string v4, "Content-ID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 209
    invoke-static {v2}, Lcom/squareup/okhttp/Headers;->of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 210
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v5

    .line 209
    invoke-static {v4, v5}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_1

    .line 211
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 212
    invoke-static {v2}, Lcom/squareup/okhttp/Headers;->of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 213
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v4

    .line 214
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-static {v4, v5}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    .line 212
    invoke-virtual {p0, v3, v4}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_1

    .line 215
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_8

    .line 216
    invoke-static {v2}, Lcom/squareup/okhttp/Headers;->of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 217
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v4

    .line 218
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v5

    .line 217
    invoke-static {v4, v5}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    .line 216
    invoke-virtual {p0, v3, v4}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_1

    .line 220
    :cond_8
    sget-object v3, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v4, "buildMultipart: body, file and data are null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v1    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .end local v2    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    goto/16 :goto_0

    .line 224
    :cond_9
    return-void

    .line 179
    :cond_a
    :goto_2
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v1, "buildMultipart: list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private static buildPostOrPutRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    .locals 8
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p1, "reqBuilder"    # Lcom/squareup/okhttp/Request$Builder;

    .line 106
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "contentType":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildPostOrPutRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto/16 :goto_1

    .line 113
    :cond_0
    const-string v1, "multipart/"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "boundary":Ljava/lang/String;
    const-string v2, "boundary="

    .line 116
    .local v2, "keywordBoundary":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 117
    .local v3, "startIndexOfBoundary":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 118
    .local v4, "endIndexOfBoundary":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 120
    sget-object v5, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boundary:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    new-instance v5, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v5}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    .line 123
    .local v5, "multBuilder":Lcom/squareup/okhttp/MultipartBuilder;
    if-eqz v1, :cond_2

    .line 124
    new-instance v6, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v6, v1}, Lcom/squareup/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 126
    :cond_2
    invoke-static {v5, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->setMultipartType(Lcom/squareup/okhttp/MultipartBuilder;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildMultipart(Lcom/squareup/okhttp/MultipartBuilder;Ljava/util/List;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 130
    .end local v1    # "boundary":Ljava/lang/String;
    .end local v2    # "keywordBoundary":Ljava/lang/String;
    .end local v3    # "startIndexOfBoundary":I
    .end local v4    # "endIndexOfBoundary":I
    .end local v5    # "multBuilder":Lcom/squareup/okhttp/MultipartBuilder;
    :cond_3
    goto/16 :goto_1

    :cond_4
    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getJSONBody()Lorg/json/JSONObject;

    move-result-object v1

    .line 133
    .local v1, "body":Lorg/json/JSONObject;
    if-eqz v1, :cond_5

    .line 134
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildFormEncodingBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    .local v2, "requestBody":Lcom/squareup/okhttp/RequestBody;
    goto :goto_0

    .line 136
    .end local v2    # "requestBody":Lcom/squareup/okhttp/RequestBody;
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    .line 138
    .restart local v2    # "requestBody":Lcom/squareup/okhttp/RequestBody;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 139
    .end local v1    # "body":Lorg/json/JSONObject;
    .end local v2    # "requestBody":Lcom/squareup/okhttp/RequestBody;
    goto :goto_1

    .line 140
    :cond_6
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    .line 141
    .local v1, "mediaType":Lcom/squareup/okhttp/MediaType;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    .line 143
    invoke-virtual {p1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 145
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 146
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    .line 147
    .restart local v2    # "requestBody":Lcom/squareup/okhttp/RequestBody;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 148
    .end local v2    # "requestBody":Lcom/squareup/okhttp/RequestBody;
    goto :goto_1

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    .line 149
    invoke-virtual {p1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 155
    .end local v1    # "mediaType":Lcom/squareup/okhttp/MediaType;
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    return-object v1
.end method

.method public static buildRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Request;
    .locals 9
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 37
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getQueryParams()Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    move-result-object v0

    .line 38
    .local v0, "queryParams":Lcom/sec/internal/helper/httpclient/HttpQueryParams;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    .line 40
    .local v1, "parsedUrl":Lcom/squareup/okhttp/HttpUrl;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 41
    :try_start_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->newBuilder()Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v3

    .line 43
    .local v3, "builder":Lcom/squareup/okhttp/HttpUrl$Builder;
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 44
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->isEncoded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 46
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/squareup/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 47
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 49
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 50
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 51
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    new-instance v5, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    move-object v3, v5

    .line 54
    .end local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "reqBuilder":Lcom/squareup/okhttp/Request$Builder;
    goto :goto_3

    .line 55
    .end local v3    # "reqBuilder":Lcom/squareup/okhttp/Request$Builder;
    :cond_3
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .restart local v3    # "reqBuilder":Lcom/squareup/okhttp/Request$Builder;
    :goto_3
    nop

    .line 62
    invoke-static {p0, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestHeader(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)V

    .line 64
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 74
    return-object v2

    .line 72
    :cond_4
    invoke-static {p0, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildPostOrPutRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 68
    :cond_5
    invoke-static {p0, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildDeleteRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 66
    :cond_6
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 57
    .end local v3    # "reqBuilder":Lcom/squareup/okhttp/Request$Builder;
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v5, "URL is wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v2
.end method

.method private static buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;
    .locals 7
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 227
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 228
    .local v0, "mediaType":Lcom/squareup/okhttp/MediaType;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "body":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    .line 231
    .local v2, "data":[B
    const/4 v3, 0x0

    .line 232
    .local v3, "requestBody":Lcom/squareup/okhttp/RequestBody;
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result v4

    const-string v5, "buildRequestBody: body compression failed"

    if-eqz v4, :cond_2

    .line 234
    if-eqz v2, :cond_0

    .line 235
    :try_start_0
    invoke-static {v2}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress([B)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 241
    :catch_0
    move-exception v4

    goto :goto_0

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    .line 237
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 239
    :cond_1
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v6, "buildRequestBody: body construction failed"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    .local v4, "e":Ljava/io/IOException;
    :goto_0
    sget-object v6, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v3, 0x0

    .line 244
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 246
    :cond_2
    if-eqz v2, :cond_3

    .line 247
    invoke-static {v0, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    goto :goto_2

    .line 248
    :cond_3
    if-eqz v1, :cond_4

    .line 249
    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    goto :goto_2

    .line 251
    :cond_4
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_2
    return-object v3
.end method

.method private static buildRequestHeader(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 5
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p1, "reqBuilder"    # Lcom/squareup/okhttp/Request$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 81
    .local v0, "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 86
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method private static getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;
    .locals 3
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 283
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "contentEncoding":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v2, "getContentEncoding: no content encoding, set to null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    .line 291
    :cond_0
    return-object v0
.end method

.method private static getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;
    .locals 3
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 271
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v2, "getContentType: no content type, set to default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "application/octet-stream"

    .line 279
    :cond_0
    return-object v0
.end method

.method private static isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "orgType"    # Ljava/lang/String;
    .param p1, "targetType"    # Ljava/lang/String;

    .line 295
    nop

    .line 296
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 295
    return v0
.end method

.method private static isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 2
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 301
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 303
    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 302
    :goto_0
    return v1
.end method

.method private static setMultipartType(Lcom/squareup/okhttp/MultipartBuilder;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mBuilder"    # Lcom/squareup/okhttp/MultipartBuilder;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, "isValid":Z
    const-string v1, "multipart/form-data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_0

    .line 261
    :cond_0
    const-string v1, "multipart/mixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->MIXED:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_0

    .line 264
    :cond_1
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMultipartType: wrong content-type, should be multipart."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0
.end method
