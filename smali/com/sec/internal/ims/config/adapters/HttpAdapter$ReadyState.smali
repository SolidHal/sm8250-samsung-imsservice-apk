.class public Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    .line 190
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->tryToConnectHttpUrlConnectionWithinTimeOut()V

    .line 232
    new-instance v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v4, v3, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 233
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-static {v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v5, v4, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-static {v4, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->access$100(Lcom/sec/internal/ims/config/adapters/HttpAdapter;Ljava/net/HttpURLConnection;)[B

    move-result-object v4

    goto :goto_0

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v5, v4, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(Ljava/lang/String;ILjava/util/Map;[B)V

    .line 232
    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 218
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

    .line 205
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->access$002(Lcom/sec/internal/ims/config/adapters/HttpAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 222
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
