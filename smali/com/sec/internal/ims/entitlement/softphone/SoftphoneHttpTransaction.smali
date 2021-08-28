.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
.super Ljava/lang/Object;
.source "SoftphoneHttpTransaction.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

.field private mConnectionTimeout:J

.field private mContent:Lorg/json/JSONObject;

.field private mContents:Lorg/json/JSONArray;

.field private mData:[B

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field private mQueryParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryParamsEncoded:Z

.field private mReadTimeout:J

.field private mStringBody:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mWriteTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 2
    .param p1, "client"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 27
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParamsEncoded:Z

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mStringBody:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContent:Lorg/json/JSONObject;

    .line 36
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContents:Lorg/json/JSONArray;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mData:[B

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mConnectionTimeout:J

    .line 40
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mReadTimeout:J

    .line 41
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mWriteTimeout:J

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 6
    .param p1, "callback"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 101
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    .line 103
    .local v0, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mStringBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContent:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lorg/json/JSONObject;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContents:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContents:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lorg/json/JSONArray;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mData:[B

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody([B)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 113
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    iget-boolean v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParamsEncoded:Z

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;-><init>(Ljava/util/LinkedHashMap;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setQueryParams(Lcom/sec/internal/helper/httpclient/HttpQueryParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 117
    :cond_4
    iget-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mConnectionTimeout:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 120
    :cond_5
    iget-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mReadTimeout:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 123
    :cond_6
    iget-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mWriteTimeout:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setWriteTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 127
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 128
    return-object v0
.end method

.method private executeRequest(Landroid/os/Message;)V
    .locals 3
    .param p1, "OnComplete"    # Landroid/os/Message;

    .line 132
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;Landroid/os/Message;)V

    .line 147
    .local v0, "callback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->buildRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 148
    return-void
.end method

.method private setConnectionTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 151
    iput-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mConnectionTimeout:J

    .line 152
    return-void
.end method

.method private setReadTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 155
    iput-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mReadTimeout:J

    .line 156
    return-void
.end method

.method private setWriteTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 159
    iput-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mWriteTimeout:J

    .line 160
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public commit(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->executeRequest(Landroid/os/Message;)V

    .line 79
    return-void
.end method

.method public initHttpRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    const-string v2, "Host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccessTokenType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 96
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-void
.end method

.method public setByteData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mData:[B

    .line 75
    return-void
.end method

.method public setJsonBody(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "body"    # Lorg/json/JSONObject;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContent:Lorg/json/JSONObject;

    .line 71
    return-void
.end method

.method public setQueryParameters(Ljava/util/LinkedHashMap;Z)V
    .locals 0
    .param p2, "encoded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 57
    .local p1, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    .line 58
    iput-boolean p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParamsEncoded:Z

    .line 59
    return-void
.end method

.method public setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V
    .locals 0
    .param p1, "method"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 54
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStringBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mStringBody:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setConnectionTimeout(J)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setReadTimeout(J)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setWriteTimeout(J)V

    .line 85
    return-void
.end method
