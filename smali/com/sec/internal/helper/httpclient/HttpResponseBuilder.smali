.class public Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;
.super Ljava/lang/Object;
.source "HttpResponseBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponse(Lcom/squareup/okhttp/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .locals 6
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .line 21
    if-nez p0, :cond_0

    .line 22
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    const-string v1, "buildResponse: okhttp response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;-><init>()V

    .line 28
    .local v0, "result":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v1, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setHeaders(Ljava/util/Map;)V

    .line 36
    const/4 v2, 0x0

    .line 39
    .local v2, "dataString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setDataBinary([B)V

    .line 40
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 41
    invoke-static {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->decompress([B)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 44
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 48
    :goto_1
    goto :goto_2

    .line 46
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    const-string v5, "buildResponse: decompression failed, revoke"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setDataString(Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method private static containsIgnoreCase(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p0, "gzip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 74
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 77
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/util/List;
    .locals 3
    .param p0, "responseParam"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    .local v0, "contentEncodingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    return-object v0

    .line 66
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    const-string v2, "getContentEncoding: no content encoding, set to null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 2
    .param p0, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 56
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "gzip"

    invoke-static {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->containsIgnoreCase(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    return v1
.end method
