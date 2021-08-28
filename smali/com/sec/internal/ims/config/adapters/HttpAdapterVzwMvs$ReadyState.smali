.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;
.source "HttpAdapterVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .line 73
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string v2, "close httpUrlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 6

    .line 66
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string v2, "connect httpUrlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->tryToConnectHttpUrlConnection()V

    .line 68
    new-instance v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget-object v4, v3, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget-object v5, v4, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(Ljava/lang/String;ILjava/util/Map;[B)V

    return-object v0
.end method
