.class public Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;,
        Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    }
.end annotation


# instance fields
.field private mBsfUrl:Ljava/lang/String;

.field private mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

.field private mCipherSuite:Ljava/lang/String;

.field private mConnectionTimeout:J

.field private mDns:Lcom/squareup/okhttp/Dns;

.field private mFollowRedirects:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIpVersion:I

.field private mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field private mNafUrl:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPhoneId:I

.field private mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

.field private mProxy:Ljava/net/Proxy;

.field private mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

.field private mReadTimeout:J

.field private mRetryOnConnectionFailure:Z

.field private mSocketFactory:Ljavax/net/SocketFactory;

.field private mUseImei:Z

.field private mUseProxy:Z

.field private mUseTls:Z

.field private mUserName:Ljava/lang/String;

.field private mWriteTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 35
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 36
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 37
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lcom/squareup/okhttp/Dns;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 47
    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 49
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 50
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V
    .locals 3
    .param p1, "method"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .param p2, "nafurl"    # Ljava/lang/String;
    .param p3, "bsfUrl"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            ")V"
        }
    .end annotation

    .line 64
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 35
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 36
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 37
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lcom/squareup/okhttp/Dns;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 47
    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 49
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 50
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 65
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 69
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V
    .locals 3
    .param p1, "method"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            ")V"
        }
    .end annotation

    .line 56
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 35
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 36
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 37
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lcom/squareup/okhttp/Dns;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 47
    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 49
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 50
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 57
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 58
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 60
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 35
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 36
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 37
    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lcom/squareup/okhttp/Dns;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    .line 47
    iput v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 49
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 50
    iput-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    .line 73
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 74
    return-void
.end method


# virtual methods
.method public getBsfUrl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    return-wide v0
.end method

.method public getDns()Lcom/squareup/okhttp/Dns;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lcom/squareup/okhttp/Dns;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getIpVersion()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    return v0
.end method

.method public getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object v0
.end method

.method public getMethodString()Ljava/lang/String;
    .locals 2

    .line 81
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    const-string v0, ""

    return-object v0

    .line 95
    :pswitch_0
    const-string v0, "TRACE"

    return-object v0

    .line 93
    :pswitch_1
    const-string v0, "OPTIONS"

    return-object v0

    .line 91
    :pswitch_2
    const-string v0, "HEAD"

    return-object v0

    .line 89
    :pswitch_3
    const-string v0, "DELETE"

    return-object v0

    .line 87
    :pswitch_4
    const-string v0, "PUT"

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "POST"

    return-object v0

    .line 83
    :pswitch_6
    const-string v0, "GET"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    return v0
.end method

.method public getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getQueryParams()Lcom/sec/internal/helper/httpclient/HttpQueryParams;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    return-object v0
.end method

.method public getReadTimeout()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    return-wide v0
.end method

.method public getRetryOnConnectionFailure()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mRetryOnConnectionFailure:Z

    return v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUseImei()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    return v0
.end method

.method public getUseProxy()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    return v0
.end method

.method public getUseTls()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteTimeout()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    return-wide v0
.end method

.method public setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "mCallback"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 137
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 138
    return-object p0
.end method

.method public setCipherSuite(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuite"    # Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mCipherSuite:Ljava/lang/String;

    return-void
.end method

.method public setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "connectionTimeout"    # J

    .line 184
    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    .line 185
    return-object p0
.end method

.method public setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "dns"    # Lcom/squareup/okhttp/Dns;

    .line 234
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mDns:Lcom/squareup/okhttp/Dns;

    .line 235
    return-object p0
.end method

.method public setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    .line 217
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 128
    .local p1, "mHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    .line 129
    return-object p0
.end method

.method public setIpVersion(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "mIpVersion"    # I

    .line 280
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mIpVersion:I

    .line 281
    return-object p0
.end method

.method public setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "method"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 102
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 103
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPassword:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "phoneId"    # I

    .line 225
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPhoneId:I

    .line 226
    return-object p0
.end method

.method public setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "postBody"    # Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 146
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 147
    return-object p0
.end method

.method public setPostBody(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 152
    return-object p0
.end method

.method public setPostBody(Lorg/json/JSONArray;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 2
    .param p1, "body"    # Lorg/json/JSONArray;

    .line 161
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 162
    return-object p0
.end method

.method public setPostBody(Lorg/json/JSONObject;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "body"    # Lorg/json/JSONObject;

    .line 156
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 157
    return-object p0
.end method

.method public setPostBody([B)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "data"    # [B

    .line 166
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>([B)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 167
    return-object p0
.end method

.method public setPostParams(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 207
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 208
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 289
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mProxy:Ljava/net/Proxy;

    .line 290
    return-object p0
.end method

.method public setQueryParams(Lcom/sec/internal/helper/httpclient/HttpQueryParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "params"    # Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 119
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    .line 120
    return-object p0
.end method

.method public setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "readTimeout"    # J

    .line 193
    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    .line 194
    return-object p0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "mSockFactory"    # Ljavax/net/SocketFactory;

    .line 175
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 176
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUseImei(Z)V
    .locals 0
    .param p1, "useImei"    # Z

    .line 302
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseImei:Z

    return-void
.end method

.method public setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "useProxy"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseProxy:Z

    .line 299
    return-object p0
.end method

.method public setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "useTls"    # Z

    .line 261
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUseTls:Z

    .line 262
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mUserName:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public setWriteTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "writeTimeout"    # J

    .line 202
    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    .line 203
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    .local v0, "headers":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 315
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\r\n        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "X-3GPP-Intended-Identity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 319
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 323
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpRequestParams[\r\n    mMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mNafUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mNafUrl:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mBsfUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mBsfUrl:Ljava/lang/String;

    .line 324
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mQueryParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mQueryParams:Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    const-string v3, ""

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mHeaders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mConnectionTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mConnectionTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mReadTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mReadTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mWriteTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mWriteTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mFollowRedirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mFollowRedirects:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\r\n]\r\n    mPostBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->mPostBody:Lcom/sec/internal/helper/httpclient/HttpPostBody;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    return-object v1
.end method
