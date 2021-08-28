.class public Lcom/sec/internal/helper/httpclient/HttpController;
.super Ljava/lang/Object;
.source "HttpController.java"


# static fields
.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final CONTENT_TYPE_CAB_XML:Ljava/lang/String; = "application/vnd.oma.cab-address-book+xml"

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_XCAP_EL_XML:Ljava/lang/String; = "application/xcap-el+xml"

.field public static final CONTENT_TYPE_XML:Ljava/lang/String; = "application/xml"

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHENTICATION_INFO:Ljava/lang/String; = "Authentication-Info"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_DEVICE_AGENT:Ljava/lang/String; = "Device-Agent"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_FILE_ICON:Ljava/lang/String; = "File-Icon"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final HEADER_X_TMUS_IMEI:Ljava/lang/String; = "X-TMUS-IMEI"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static final TAG:Ljava/lang/String;

.field public static final VAL_3GPP_GBA:Ljava/lang/String; = "3gpp-gba"

.field private static volatile random:Ljava/util/Random;

.field private static volatile sInstance:Lcom/sec/internal/helper/httpclient/HttpController;


# instance fields
.field private final API_SIGNATURE_MAX_INT:I

.field private mIsDebugHttps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    .line 264
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpController;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sInstance:Lcom/sec/internal/helper/httpclient/HttpController;

    .line 266
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x186a0

    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->API_SIGNATURE_MAX_INT:I

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    .line 274
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static configConnectionSpec()Lcom/squareup/okhttp/ConnectionSpec;
    .locals 4

    .line 427
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 428
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    .line 444
    .local v0, "spec":Lcom/squareup/okhttp/ConnectionSpec;
    return-object v0
.end method

.method private static createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 448
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpController$3;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpController$3;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 459
    .local v0, "byPassTrustManagers":[Ljavax/net/ssl/TrustManager;
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 460
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 461
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    return-object v2
.end method

.method private generateRandomString(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I

    .line 484
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 485
    .local v0, "index":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Call;
    .locals 3
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 361
    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 363
    .local v0, "request":Lcom/squareup/okhttp/Request;
    if-nez v0, :cond_0

    .line 364
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string v2, "getCall(): okhttp request build failure"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x0

    return-object v1

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/sec/internal/helper/httpclient/HttpController;
    .locals 1

    .line 278
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sInstance:Lcom/sec/internal/helper/httpclient/HttpController;

    return-object v0
.end method

.method private getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 8
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 372
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 375
    .local v0, "okClient":Lcom/squareup/okhttp/OkHttpClient;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/32 v5, 0x7fffffff

    if-ltz v1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 380
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 381
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 385
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 388
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/squareup/okhttp/OkHttpClient;

    .line 392
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 393
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 396
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    .line 397
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getRetryOnConnectionFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setRetryOnConnectionFailure(Z)V

    .line 402
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://wsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    if-eqz v1, :cond_5

    goto :goto_0

    .line 405
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 406
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 407
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpec()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 408
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/httpclient/HttpController$2;-><init>(Lcom/sec/internal/helper/httpclient/HttpController;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;

    goto :goto_1

    .line 404
    :cond_6
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_7
    :goto_1
    nop

    .line 419
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 420
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;

    .line 423
    :cond_8
    return-object v0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string v3, "Could not load keystore "

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object v0
.end method

.method private isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z
    .locals 4
    .param p1, "reqParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p2, "async"    # Z

    .line 465
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 471
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string v2, "isValidRequestParam(): callback is null for async call"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return v0

    .line 475
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidRequestParam(): invalid uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return v0

    .line 480
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_3
    :goto_0
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string v2, "isValidRequestParam(): invalid param, vail"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return v0
.end method


# virtual methods
.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 7
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    .line 287
    .local v0, "call":Lcom/squareup/okhttp/Call;
    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "okhttp fail to create call"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 289
    return-void

    .line 292
    :cond_1
    const v1, 0x186a0

    invoke-direct {p0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->generateRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "signature":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpController$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController$1;-><init>(Lcom/sec/internal/helper/httpclient/HttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 324
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v3

    new-instance v4, Ljava/io/IOException;

    const-string v5, "okhttp malformed response"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 326
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public setDebugHttps(Z)V
    .locals 0
    .param p1, "isDebugHttps"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    .line 271
    return-void
.end method

.method public syncExecute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .locals 8
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 330
    return-object v1

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    .line 334
    .local v0, "call":Lcom/squareup/okhttp/Call;
    if-nez v0, :cond_1

    .line 335
    return-object v1

    .line 338
    :cond_1
    const v2, 0x186a0

    invoke-direct {p0, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->generateRandomString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "signature":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v3, 0x0

    .line 343
    .local v3, "response":Lcom/squareup/okhttp/Response;
    :try_start_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v4

    .line 345
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 348
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    const-string v4, "HTTP response: "

    if-eqz v3, :cond_2

    .line 349
    nop

    .line 350
    invoke-static {v3}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->buildResponse(Lcom/squareup/okhttp/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    move-result-object v1

    .line 352
    .local v1, "result":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    sget-object v6, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-object v1

    .line 355
    .end local v1    # "result":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    :cond_2
    sget-object v5, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " null"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-object v1
.end method
