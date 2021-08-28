.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;
.source "HttpAdapterUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->tryToConnectHttpUrlConnection()V

    .line 57
    new-instance v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v4, v3, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v5, v4, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(Ljava/lang/String;ILjava/util/Map;[B)V

    return-object v0
.end method
