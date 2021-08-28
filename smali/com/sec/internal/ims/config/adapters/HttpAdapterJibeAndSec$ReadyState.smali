.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;
.source "HttpAdapterJibeAndSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->tryToConnectHttpUrlConnection()V

    .line 37
    new-instance v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    iget-object v4, v3, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    iget-object v5, v4, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(Ljava/lang/String;ILjava/util/Map;[B)V

    return-object v0
.end method
