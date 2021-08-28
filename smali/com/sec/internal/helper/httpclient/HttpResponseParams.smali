.class public Lcom/sec/internal/helper/httpclient/HttpResponseParams;
.super Ljava/lang/Object;
.source "HttpResponseParams.java"


# instance fields
.field private mCipherSuite:Ljava/lang/String;

.field private mDataBinary:[B

.field private mDataString:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field private mStatusReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    .line 16
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public getDataBinary()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    return v0
.end method

.method public getStatusReason()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherSuite(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuite"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDataBinary([B)V
    .locals 0
    .param p1, "dataBinary"    # [B

    .line 60
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    .line 61
    return-void
.end method

.method public setDataString(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataString"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 28
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    .line 29
    return-void
.end method

.method public setStatusReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusReason"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 85
    const-string v0, "]"

    const-string v1, "\r\n    mHeaders="

    const-string v2, "HttpResponseParams[\r\n    mStatusCode="

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v3, "headers":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 87
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 88
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 93
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n    mDataString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 94
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object v0

    .line 95
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n    mDataString length="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
