.class public Lcom/sec/internal/ims/entitlement/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mHttpController:Lcom/sec/internal/helper/httpclient/HttpController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->mHttpController:Lcom/sec/internal/helper/httpclient/HttpController;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildHttpRequestCallback(Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .locals 1
    .param p1, "OnComplete"    # Landroid/os/Message;

    .line 51
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;-><init>(Lcom/sec/internal/ims/entitlement/util/HttpHelper;Landroid/os/Message;)V

    .line 68
    .local v0, "callback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    return-object v0
.end method

.method private createHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 2
    .param p1, "method"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 45
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->buildHttpRequestCallback(Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    .line 46
    .local v0, "callback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    .line 47
    .local v1, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    return-object v1
.end method


# virtual methods
.method public executeNSDSRequest(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONArray;Landroid/os/Message;Ljavax/net/SocketFactory;Lcom/squareup/okhttp/Dns;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "jsonArray"    # Lorg/json/JSONArray;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p6, "dns"    # Lcom/squareup/okhttp/Dns;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Landroid/os/Message;",
            "Ljavax/net/SocketFactory;",
            "Lcom/squareup/okhttp/Dns;",
            ")V"
        }
    .end annotation

    .line 33
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->createHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 34
    .local v0, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    if-eqz p5, :cond_0

    .line 35
    invoke-virtual {v0, p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 37
    :cond_0
    if-eqz p6, :cond_1

    .line 38
    invoke-virtual {v0, p6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 40
    :cond_1
    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lorg/json/JSONArray;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 41
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->mHttpController:Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 42
    return-void
.end method
