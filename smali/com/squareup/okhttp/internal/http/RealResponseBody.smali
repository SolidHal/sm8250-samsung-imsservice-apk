.class public final Lcom/squareup/okhttp/internal/http/RealResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lcom/squareup/okhttp/Headers;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V
    .locals 0
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p2, "source"    # Lokio/BufferedSource;

    .line 27
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RealResponseBody;->headers:Lcom/squareup/okhttp/Headers;

    .line 29
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RealResponseBody;->headers:Lcom/squareup/okhttp/Headers;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RealResponseBody;->headers:Lcom/squareup/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-object v0
.end method
