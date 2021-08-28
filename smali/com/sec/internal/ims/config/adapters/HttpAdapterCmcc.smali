.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterCmcc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$miTM;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;
    }
.end annotation


# static fields
.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field protected static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->LOG_TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 32
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 33
    return-void
.end method


# virtual methods
.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "statusCode":I
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 127
    :goto_0
    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->mPhoneId:I

    const-string v4, "fail to read status code"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 127
    :goto_1
    return v0
.end method

.method protected setHttpUrlConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 108
    return-void
.end method

.method protected setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 100
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->mURLConn:Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 102
    return-void
.end method

.method protected setSocketFactory()V
    .locals 7

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 86
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 87
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    new-instance v3, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$miTM;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$miTM;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$1;)V

    .line 88
    .local v3, "tm":Ljavax/net/ssl/TrustManager;
    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 89
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 90
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    move-object v0, v4

    .line 91
    sget-object v4, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->mPhoneId:I

    const-string v6, "get socketFactory for HTTPS"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v2    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    nop

    .line 95
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
